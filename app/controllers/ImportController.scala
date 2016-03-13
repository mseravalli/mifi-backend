package controllers

import helpers.Global
import models._

import com.github.mauricio.async.db.util.ExecutorServiceUtils.CachedExecutionContext
import com.github.tototoshi.csv._
import javax.inject.Singleton
import org.joda.time.{LocalDate}
import org.joda.time.format.{DateTimeFormatter, DateTimeFormat}
import org.slf4j.{LoggerFactory, Logger}
import play.api.mvc._
import play.api.mvc.MultipartFormData.FilePart
import play.api.libs.Files.TemporaryFile
import play.api.libs.json._
import scala.async.Async.{async, await}
import slick.driver.PostgresDriver.api._

object GenericImporter {
  def formatAmount(s: String): String = {
    if (s.length > 2) {
      s.reverse.charAt(2) match {
        case ',' => s.replace(".", "").replace(",", ".")
        case '.' => s.replace(",", "")
      }
    }
    else if(s.equals("")) {
      "0.00"
    }
    else {
      s
    }
  }

  def getAmount(x: List[String], a: Tables.AccountsRow): BigDecimal = {
    val in = BigDecimal.apply(x.lift(a.amountInPos).map{amount => formatAmount(amount)}.getOrElse("0.00"))
    val out = BigDecimal.apply(formatAmount(x.lift(a.amountOutPos).getOrElse("0.00")).replace("-", ""))
    if (in.abs == out.abs) {
      in
    }
    else {
      in - out
    }
  }

  def mergeStrings(x: List[String], positions: Seq[Int]): String = {
    positions.map{i => x.lift(i).getOrElse("")}.reduce((a, b) => a +", "+b)
  }

  def importCSV(csv: FilePart[TemporaryFile], a: Tables.AccountsRow): List[List[Any]] = {
    implicit object MyFormat extends DefaultCSVFormat {
//      override val delimiter = a.delimiter.toCharArray.head
      override val delimiter = a.delimiter.toCharArray.head
    }
    val reader = CSVReader.open(csv.ref.file, "ISO-8859-1")
    // skip the first rows
    for (i <- 0 until a.rowsToSkip) { reader.readNext }
    val format = DateTimeFormat.forPattern(a.dateFormat);

    @scala.annotation.tailrec
    def loadValues(r: CSVReader, values: List[List[Any]]): List[List[Any]] = r.readNext match {
      case None => values
      case Some(x) => {
        a.finalRow match {
          case Some(s) => {
            if (x(0).equals(s)) {
              values
            }
            else {
              val row =readCSVRow(a, format, x)
              loadValues(r, values :+ row)
            }
          }
          case None => {
            val row =readCSVRow(a, format, x)
            loadValues(r, values :+ row)
          }
        }
//        x(0) match {
//          case a.finalRow => values
//          case _ => {
//            val row = List(a.account,
//              LocalDate.parse(x(a.transactionDatePos), format),
//              LocalDate.parse(x(a.exchangeDatePos), format),
//              mergeStrings(x, a.receiverPos.split(",").map( _.toInt )),
//              mergeStrings(x, a.purposePos.split(",").map( _.toInt )),
//              getAmount(x, a),
//              x.lift(a.currencyPos).getOrElse(a.currencyDefault)
//            )
//            loadValues(r, values :+ row)
//          }
//        }
      }
    }

    loadValues(reader, List())
  }

  def readCSVRow(a: Tables.AccountsRow, format: DateTimeFormatter, x: List[String]): List[Any] = {
    val row = List(a.account,
      LocalDate.parse(x(a.transactionDatePos), format),
      LocalDate.parse(x(a.exchangeDatePos), format),
      mergeStrings(x, a.receiverPos.split(",").map(_.toInt)),
      mergeStrings(x, a.purposePos.split(",").map(_.toInt)),
      getAmount(x, a),
      x.lift(a.currencyPos).getOrElse(a.currencyDefault)
    )
    row
  }
}

@Singleton
class ImportController extends Controller {
  private final val logger: Logger = LoggerFactory.getLogger(classOf[ImportController])

  def importQuery (transactions: List[List[Any]]): String = {
    val v = " (?, ?, ?, ?, ?, ?, ?, ?, ?, FALSE) "
    var values = v
    for (i <- 1 until transactions.size) {
      values = v + ", " + values 
    }
    s"""
      INSERT INTO transactions ("account_number",
        "transaction_date",
        "exchange_date",
        "receiver",
        "purpose",
        "amount",
        "currency",
        "category",
        "sub_category",
        "approved")
      VALUES $values
      RETURNING id
    """
  }

  val approveQuery: String = s"""
    UPDATE transactions
    SET approved = TRUE
    WHERE approved = FALSE
  """

  val disapproveQuery: String = s"""
    DELETE FROM transactions
    WHERE approved = FALSE
  """

  def approveImport(): Action[JsValue] = Action.async(parse.json) { request => async{
    val jsonRequest = request.body
    val isApproved = (jsonRequest \ "isApproved").as[Boolean]
    val query = isApproved match {
      case true => approveQuery
      case false => disapproveQuery
    }
    val queryResult = await { Global.pool.sendPreparedStatement(query) }
    Ok(Json.obj("result" -> JsString(queryResult.statusMessage)))
  } }

  val categories = Map(
    "rewe sagt danke" -> ("living", "food"),
    "dean&david" -> ("living", "food"),
    "sausalitos" -> ("free time", "going out"),
    "mvg automat" -> ("mobility", "public transport"),
    "miete" -> ("house", "rent"),
    "kabel deutschland" -> ("house", "internet"),
    "primastrom" -> ("house", "electricity"),
    "kalixa pay limited" -> ("finance", "internal transfer"),
    "dauerauftrag salary" -> ("finance", "internal transfer"),
    "seravalli, marco salary" -> ("finance", "internal transfer"),
    "internal transfer" -> ("finance", "internal transfer"),
    "load with bank transfer" -> ("finance", "internal transfer"),
    "loading fee" -> ("finance", "costs and fees"),
    "lohn/gehalt" -> ("work and training", "salary"),
    "bexp spesen" -> ("work and training", "travel"),
    "e-plus service" -> ("house", "phone"),
    "rundfunk ard" -> ("finance", "taxes")
  )

  /**
   * Adds to every transaction the first match from the given category otherwise "other", "to categorize"
   * @param in
   * @return
   */
  def categorizeTransactions(in: List[List[Any]], categories: Map[String, Tuple2[String, String]]): List[List[Any]] = {
    in.map(t=> {
      val c = categories.find(c => { 
        t(3).toString.toLowerCase.contains(c._1.toLowerCase) ||
        t(4).toString.toLowerCase.contains(c._1.toLowerCase) ||
        t(5).toString.toLowerCase.contains(c._1.toLowerCase)
      }).map(c => List() :+ c._2._1 :+ c._2._2 )
      t ::: c.getOrElse(List() :+ "other" :+ "to categorize")
    } )
  }

  def importTransactions = Action.async(parse.multipartFormData) { request =>
    request.body.file("csv").map { csv =>
      request.body.dataParts.get("importAccount").map { accounts => async {
        accounts match {
          case accountName :: tail => {
//            val accountMap = await(AccountController.getAccount(account))
            val accounts = await {
              Global.db.run(AccountController.readAccountsQuery(accountName))
            }
            accounts match {
              case a::Nil => {
                val transactions = GenericImporter.importCSV(csv, a._1)
                val insertValues = categorizeTransactions(transactions, categories)
                val queryResult = await {
                  Global.pool.sendPreparedStatement(importQuery(transactions), insertValues.flatten)
                }
                val status = queryResult.statusMessage
                val balance = await {
                  Global.db.run(AccountController.readAccountsQuery(a._1.account))
                }.head._2
                val result = Json.obj("status" -> status,
                  "account" ->
                    Json.obj("account" -> a._1.account,
                      "balance" -> Json.toJson(balance)))
                Ok(result)
              }
              case Nil => BadRequest("Account not present in the database")
            }
          }
          case Nil => BadRequest("Missing account")
        }
      }}.getOrElse{ async { BadRequest("Missing account") } }
    }.getOrElse { async { BadRequest("Missing file") } }
  }
}

