package controllers

import java.io.StringReader

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

  def preprocessNumber26(lines: String): String = {    val dow = List("monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday")

    val numPattern = """-?\d+,\d\d""".r
    var result:String = ""
    var i = 0;
    var j = 0
    val l = lines.replace(" €", "").split("\n");
    var date = ""
    while (i < l.length - 1) {
      val isDate = dow.map(x => l(i).toLowerCase.contains(x)).reduce(_ || _)
      if (isDate) {
        val dateParts = l(i).replace(".", "").toUpperCase().split(' ')
        date = dateParts(1) + " " + dateParts(2).substring(0, 3) + " " + dateParts(3)
        i += 2
      }
      else {
        result += date + ";"
        var isNum = false
        var isDate = false
        j = 0
        do {
          result += l(i)
          i += 1
          j += 1
          isNum = numPattern.findFirstIn(l(i)) match {
            case Some(n) => true
            case None => false
          }
          isDate = dow.map(x => l(i).toLowerCase.contains(x)).reduce(_ || _)
          if (i < l.length - 1 && !isDate && !isNum || j < 4) {
            result += ";"
          }
        } while(i < l.length - 1 && !isDate && !isNum )

        if(i != l.length - 1) {
          result += "\n"
        }
      }
    }
    result += l(l.length - 1)
    if (j < 4) {
      result += ";"
    }
    return result
  }

  def importCSV(csv: FilePart[TemporaryFile], a: Tables.AccountsRow): List[List[Any]] = {
    implicit object MyFormat extends DefaultCSVFormat {
      override val delimiter = a.delimiter.toCharArray.head
    }
    val encoding = a.encoding.getOrElse("UTF-8")
    val source = scala.io.Source.fromFile(csv.ref.file, enc=encoding)
    val sourceString = try source.mkString finally source.close
    val csvString = a.account.toLowerCase() match {
      case "number26" => preprocessNumber26(sourceString)
      case _ => sourceString
    }

    val reader = CSVReader.open(new StringReader(csvString))

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
      }
    }

    loadValues(reader, List())
  }

  def readCSVRow(a: Tables.AccountsRow, format: DateTimeFormatter, x: List[String]): List[Any] = {
    val row = List(a.account,
      LocalDate.parse(x(a.transactionDatePos), format),
      LocalDate.parse(x(a.exchangeDatePos), format),
      mergeStrings(x, a.receiverPos.replace("{", "").replace("}", "").split(",").map(_.toInt)),
      mergeStrings(x, a.purposePos.replace("{", "").replace("}", "").split(",").map(_.toInt)),
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

  val approveQuery = {
    Tables.Transactions
      .filter(_.approved === false)
      .map(_.approved)
      .update(true)
  }

  val invalidateQuery = {
    Tables.Transactions
      .filter(_.approved === false)
      .delete
  }

  def approveImport(): Action[JsValue] = Action.async(parse.json) { request => async{
    val jsonRequest = request.body
    val isApproved = (jsonRequest \ "isApproved").as[Boolean]
    val (action, query)= isApproved match {
      case true => ("insert", approveQuery)
      case false => ("delete", invalidateQuery)
    }

    val res = await { Global.db.run(query) }

    Ok(Json.obj("result" -> JsString(s"$action ${res.toString}")))
  } }

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
            val accounts = await {
              Global.db.run(AccountController.readAccountsQuery(accountName))
            }
            val categories: Map[String, Tuple2[String, String]] = await {
              Global.db.run(Tables.TransactionsCategorization.result)
            }.map(x => x.description -> (x.category, x.subCategory)).toMap

            accounts.length match {
              case 1 => {
                val a = accounts.head
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
              case _ => BadRequest("Account not present in the database")
            }
          }
          case Nil => BadRequest("Missing account")
        }
      }}.getOrElse{ async { BadRequest("Missing account") } }
    }.getOrElse { async { BadRequest("Missing file") } }
  }
}

