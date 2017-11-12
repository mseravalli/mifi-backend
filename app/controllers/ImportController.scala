package controllers

import java.io.StringReader

import helpers.Global
import models._

import com.github.tototoshi.csv._
import java.sql.Date
import java.sql.Timestamp
import javax.inject.Singleton
import org.joda.time.format.{DateTimeFormatter, DateTimeFormat}
import org.slf4j.{LoggerFactory, Logger}
import play.api.mvc._
import play.api.mvc.MultipartFormData.FilePart
import play.api.libs.concurrent.Execution.Implicits._
import play.api.libs.Files.TemporaryFile
import play.api.libs.json._
import play.api.libs.ws._
import play.api.libs.ws.ning.NingAsyncHttpClientConfigBuilder
import play.api.Play.current
import scala.async.Async.{async, await}
import scala.concurrent.Future
import slick.driver.PostgresDriver.api._

object GenericImporter {
  def formatAmount(s: String): String = {
    if (s.length > 2) {
      s.reverse.charAt(2) match {
        case ',' => s.replace(".", "").replace(",", ".")
        case '.' => s.replace(",", "")
        case t => formatAmount(s"${s}0")
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

  def retrieveCSV(startDate: String, endDate: String): Future[String] = async {
    val oauthTokenUrl = "https://api.tech26.de/oauth/token"
    val oauthTokenData: Map[String, Seq[String]] = Map(
      "username" -> Seq("marco.seravalli@gmail.com"),
      "password" -> Seq("^35*burn*SPACE*with*AGAIN*88^"),
      "grant_type" -> Seq("password")
    )
    val oauthTokenResp = await{
      WS.url(oauthTokenUrl)
        .withHeaders("Authorization" -> "Basic bXktdHJ1c3RlZC13ZHBDbGllbnQ6c2VjcmV0")
        .post(oauthTokenData)
    }
    val bearerToken = (oauthTokenResp.json \ "access_token").toString.replaceAll("\"", "")
    val startDateTimestamp = Timestamp.valueOf(startDate).getTime
    val endDateTimestamp   = Timestamp.valueOf(endDate).getTime
                                                            
    val reportUrl = s"https://api.tech26.de/api/smrt/reports/$startDateTimestamp/$endDateTimestamp/statements"
    val reportResp = await{
      WS.url(reportUrl)
        .withHeaders("Authorization" -> s"bearer $bearerToken")
        .get
    }
    reportResp.body
  }

  def importCSV(csv: FilePart[TemporaryFile], a: Tables.AccountsRow, categories: Map[String, Tuple2[String, String]]): Future[List[Tables.TransactionsRow]] = async {
    implicit object MyFormat extends DefaultCSVFormat {
      override val delimiter = a.delimiter.toCharArray.head
    }
    val startDate = "2017-06-01 00:00:00"
    val endDate   = "2017-07-31 23:59:59"
    val encoding = a.encoding.getOrElse("UTF-8")
    val source = scala.io.Source.fromFile(csv.ref.file, enc=encoding)
    val sourceString = try source.mkString finally source.close
    val csvString = a.account.toLowerCase() match {
      case "number26" => await{ retrieveCSV(startDate, endDate) }
      case _ => sourceString
    }

    val reader = CSVReader.open(new StringReader(csvString))

    // skip the first rows
    for (i <- 0 until a.rowsToSkip) { reader.readNext }
    val format = DateTimeFormat.forPattern(a.dateFormat);

    @scala.annotation.tailrec
    def loadValues(r: CSVReader, values: List[Tables.TransactionsRow]): List[Tables.TransactionsRow] = r.readNext match {
      case None => values
      case Some(x) => {
        a.finalRow match {
          case Some(s) => {
            if (x(0).equals(s)) {
              values
            }
            else {
              val row = readCSVRow(a, format, x, categories)
              loadValues(r, values :+ row)
            }
          }
          case None => {
            val row = readCSVRow(a, format, x, categories)
            loadValues(r, values :+ row)
          }
        }
      }
    }

    loadValues(reader, List())
  }

  /**
    * Returns for the provided fields the categories associated otherwise "other" "to categorize"
    * @param categories
    * @param fields
    * @return
    */
  def categorize(categories: Map[String, Tuple2[String, String]], fields: List[String]): Tuple2[String, String] = {
    val c = categories.find(c => {
      fields.map(f => f.toLowerCase.contains(c._1.toLowerCase)).reduce(_ || _)
    }).map(c => c._2)
    c.getOrElse(("other", "to categorize"))
  }

  def readCSVRow(a: Tables.AccountsRow, format: DateTimeFormatter, x: List[String], categories: Map[String, Tuple2[String, String]]): Tables.TransactionsRow = {
    val receiver = mergeStrings(x, a.receiverPos.replace("{", "").replace("}", "").split(",").map(_.toInt))
    val purpose = mergeStrings(x, a.purposePos.replace("{", "").replace("}", "").split(",").map(_.toInt))
    val fields = List(receiver, purpose)
    val c = categorize(categories, fields)
    val transactionDate = new java.text.SimpleDateFormat(a.dateFormat).parse(x(a.transactionDatePos))
    val exchangeDate = new java.text.SimpleDateFormat(a.dateFormat).parse(x(a.exchangeDatePos))
    Tables.TransactionsRow (
      id = 0,
      accountNumber = Some(a.account),
      transactionDate = Some(new Date(transactionDate.getTime)),
      exchangeDate = Some(new Date(exchangeDate.getTime)),
      receiver = Some(receiver),
      purpose = Some(purpose),
      amount = Some(getAmount(x, a)),
      currency = Some(x.lift(a.currencyPos).getOrElse(a.currencyDefault)),
      category = Some(c._1),
      subCategory = Some(c._2),
      comment = None,
      approved = false
    )
  }
}

@Singleton
class ImportController extends Controller {
  private final val logger: Logger = LoggerFactory.getLogger(classOf[ImportController])

  def importQuery(transactions: List[Tables.TransactionsRow]) = {
    val t = Tables.Transactions
    val insertQuery = t returning t.map(_.id) into ((item, id) => item.copy(id = id))

    val action = insertQuery ++= transactions
    action
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

  def importTransactions = Action.async(parse.multipartFormData) { request =>
    request.body.file("csv").map { csv =>
      request.body.dataParts.get("importAccount").map { accounts => async {
        accounts match {
          case accountName :: tail => {
            val accounts = await {
              Global.db.run(AccountController.readAccountsQuery(Some(List(accountName))))
            }
            val categories: Map[String, Tuple2[String, String]] = await {
              Global.db.run(Tables.TransactionsCategorization.result)
            }.map(x => x.description -> (x.category, x.subCategory)).toMap

            accounts.length match {
              case 1 => {
                val a = accounts.head
                val transactions = await { GenericImporter.importCSV(csv, a._1, categories) }

                val queryResult = await {
                  Global.db.run(importQuery(transactions))
                }

                val status = queryResult.toString
                val balance = await {
                  Global.db.run(AccountController.readAccountsQuery(Some(List(a._1.account))))
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

