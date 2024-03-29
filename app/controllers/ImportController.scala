package controllers

import java.io.StringReader
import java.sql.Date

import com.github.tototoshi.csv._
import helpers._
import javax.inject._
import models._
import org.joda.time.format.{DateTimeFormat, DateTimeFormatter}
import play.api.db.slick._
import play.api.libs.Files.TemporaryFile
import play.api.Logging
import play.api.libs.json._
import play.api.libs.ws._
import play.api.mvc.MultipartFormData.FilePart
import play.api.mvc._
import slick.jdbc.JdbcProfile
import slick.jdbc.PostgresProfile.api._

import scala.async.Async.{async, await}
import scala.concurrent.{ExecutionContext, Future}
import scala.util.{Failure, Success, Try}

@Singleton
class ImportController @Inject() (implicit
    ec: ExecutionContext,
    protected val dbConfigProvider: DatabaseConfigProvider,
    cc: ControllerComponents,
    ws: WSClient,
    pbp: PlayBodyParsers
) extends AbstractController(cc)
    with HasDatabaseConfigProvider[JdbcProfile]
    with Logging {

  def getAmount(
      x: List[String],
      a: AccountsRow,
      at: AccountTypesRow
  ): BigDecimal = {
    val incomeFactor = BigDecimal(1)
    val in = BigDecimal.apply(
      x.lift(at.amountInPos)
        .map { amount => Formatter.formatAmount(amount) }
        .filter(!_.equals(""))
        .getOrElse("0.00")
    )
    val out = BigDecimal.apply(
      Formatter
        .formatAmount(
          x.lift(at.amountOutPos).filter(!_.equals("")).getOrElse("0.00")
        )
        .replace("-", "")
    )
    if (in.abs == out.abs) {
      in * incomeFactor
    } else {
      (in - out) * incomeFactor
    }
  }

  def transformCSVIntoTransactions(
      csvString: String,
      a: AccountsRow,
      at: AccountTypesRow
  ): Future[List[TransactionsRow]] = async {
    implicit object MyFormat extends DefaultCSVFormat {
      override val delimiter = at.delimiter.toCharArray.head
    }

    val s = csvString
    val reader = CSVReader.open(new StringReader(s))

    // skip the first rows
    for (i <- 0 until at.rowsToSkip) { reader.readNext }
    val format = DateTimeFormat.forPattern(at.dateFormat);

    @scala.annotation.tailrec
    def loadValues(
        r: CSVReader,
        values: List[TransactionsRow]
    ): List[TransactionsRow] = r.readNext match {
      case None => values
      case Some(x) => {
        at.finalRow match {
          case Some(s) => {
            if (x(0).equals(s)) {
              values
            } else {
              val row = readCSVRow(a, at, format, x)
              loadValues(r, values :+ row)
            }
          }
          case None => {
            if (x.foldLeft("")((sum, y) => sum + y) == "") {
              values
            } else {
              val row = readCSVRow(a, at, format, x)
              loadValues(r, values :+ row)
            }
          }
        }
      }
    }

    loadValues(reader, List())
  }

  def mergeStrings(x: List[String], positions: Seq[Int]): String = {
    val s = positions
      .map { i => x.lift(i).getOrElse("") }
      .reduce((a, b) => a + ", " + b)
      .replaceAll("\\s+", " ")
    trimOverflowingString(s, 512)
  }

  def trimOverflowingString(s: String, l: Integer): String = {
    s match {
      case x if (s.size > l) => {
        logger.warn(
          s"Purpose needed to be shortened to ${l} chars. Original: ${s}"
        )
        s.substring(0, l)
      }
      case _ => s
    }
  }

  def readCSVRow(
      a: AccountsRow,
      at: AccountTypesRow,
      format: DateTimeFormatter,
      x: List[String]
  ): TransactionsRow = {
    val receiver = mergeStrings(
      x,
      at.receiverPos.replace("{", "").replace("}", "").split(",").map(_.toInt)
    )
    val purpose = mergeStrings(
      x,
      at.purposePos.replace("{", "").replace("}", "").split(",").map(_.toInt)
    )
    val transactionDate = new java.text.SimpleDateFormat(at.dateFormat)
      .parse(x(at.transactionDatePos))
    val exchangeDate =
      new java.text.SimpleDateFormat(at.dateFormat).parse(x(at.exchangeDatePos))
    TransactionsRow(
      id = 0,
      accountId = a.id,
      transactionDate = Some(new Date(transactionDate.getTime)),
      exchangeDate = Some(new Date(exchangeDate.getTime)),
      receiver = Some(receiver),
      purpose = Some(purpose),
      amount = Some(getAmount(x, a, at)),
      // currency = Some(x.lift(at.currencyPos).getOrElse(at.currencyDefault)),
      currency = Some(at.currencyDefault),
      category = Some("other"),
      subCategory = Some("to categorize"),
      comment = None,
      approved = false
    )
  }

  // if username of password are not present a null value will be passed
//  def retrieveCSV(account: models.AccountsRow, startDate: String, endDate: String): Future[String] = async {
//    val oauthTokenUrl = account.apiOauthUrl.getOrElse("")
//    val oauthTokenData: Map[String, Seq[String]] = Map(
//      "username" -> Seq(account.apiUser.getOrElse("")),
//      "password" -> Seq(account.apiPass.getOrElse("")),
//      "grant_type" -> Seq("password")
//    )
//    val oauthTokenResp = await{
//      ws.url(oauthTokenUrl)
//        .addHttpHeaders("Authorization" -> account.apiAuthorization.getOrElse(""))
//        .post(oauthTokenData)
//    }
//    val bearerToken = (oauthTokenResp.json \ "access_token").toString.replaceAll("\"", "")
//    val startDateTimestamp = Timestamp.valueOf(startDate).getTime.toString
//    val endDateTimestamp   = Timestamp.valueOf(endDate).getTime.toString
//
//    val reportUrl = account.apiReportUrl.getOrElse("")
//      .replace("mifiStartDate", startDateTimestamp)
//      .replace("mifiEndDate", endDateTimestamp)
//    val reportResp = await{
//      ws.url(reportUrl)
//        .addHttpHeaders("Authorization" -> s"bearer $bearerToken")
//        .get
//    }
//    reportResp.body
//    ""
//  }

  def fetchCSV(
      csv: Option[FilePart[TemporaryFile]],
      a: AccountsRow,
      at: AccountTypesRow,
      startDate: Option[String],
      endDate: Option[String]
  ): Future[String] = {
    implicit object MyFormat extends DefaultCSVFormat {
      override val delimiter = at.delimiter.toCharArray.head
    }

    // val startDate = "2017-08-01 00:00:00"
    val start = startDate match {
      case Some(s) => s
      case None    => "" // TODO error
    }
    val end = endDate match {
      case Some(s) => s
      case None    => "" // TODO error
    }

    val csvString: Try[String] = a.accountType match {
      // case "number26" => Success( await{ retrieveCSV(a, start, end) } )
      case _ => {
        csv match {
          case Some(f) => {
            val encoding = at.encoding.getOrElse("UTF-8")
            val source =
              scala.io.Source.fromFile(f.ref.path.toFile, enc = encoding)
            val sourceString =
              try source.mkString
              finally source.close
            Success(sourceString)
          }
          case None => Failure(new Exception("Missing CSV File"))
        }
      }
    }

    Future.fromTry(csvString)
  }

  def importQuery(transactions: List[TransactionsRow]) = {
    val t = Tables.Transactions
    val insertQuery =
      t returning t.map(_.id) into ((item, id) => item.copy(id = id))

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

  def approveImport(): Action[JsValue] = Action.async(pbp.json) { request =>
    async {
      val jsonRequest = request.body
      val isApproved = (jsonRequest \ "isApproved").as[Boolean]
      val (action, query) = isApproved match {
        case true  => ("insert", approveQuery)
        case false => ("delete", invalidateQuery)
      }

      val res = await { db.run(query) }

      Ok(Json.obj("result" -> JsString(s"$action ${res.toString}")))
    }
  }

  // TODO improve search of single account
  def importTransactions = Action.async(pbp.multipartFormData) { request =>
    val accountId: Try[Long] = getAccountIdFromRequest(request)

    val account: Future[((AccountsRow, AccountTypesRow), BigDecimal)] =
      getSingleAccount(accountId)

    val csv = request.body.file("csv")

    val startDate = request.body.dataParts.get("startDate").map(_.last)
    val endDate = request.body.dataParts.get("endDate").map(_.last)

    val result: Future[JsObject] = account.flatMap { a =>
      async {
        val csvString = await {
          fetchCSV(csv, a._1._1, a._1._2, startDate, endDate)
        }

        val transactions = await {
          transformCSVIntoTransactions(csvString, a._1._1, a._1._2)
        }
        val queryResult = await {
          db.run(importQuery(transactions))
        }
        val status = queryResult.toString
        val balance = await {
          db.run(
            new AccountController().readAccountsQuery(
              false,
              Some(List(a._1._1.id))
            )
          )
        }.head._2

        var classificationRes = await { new ClassifierController().classify }
        logger.debug(classificationRes.toString)

        Json.obj(
          "status" -> status,
          "account" -> Json.obj(
            "account" -> a._1._1.id,
            "balance" -> Json.toJson(balance)
          )
        )
      }
    }

    val response = result.transform[Result] { (x: Try[JsObject]) =>
      x match {
        case Success(s) => Success(Ok(s))
        case Failure(e) => {
          val status = s"${e.toString}: ${e.getMessage}"
          logger.error(status)
          Success(InternalServerError(Json.obj("status" -> JsString(status))))
        }
      }
    }

    response
  }

  private def getSingleAccount(accountId: Try[Long]) = {
    val account: Future[((AccountsRow, AccountTypesRow), BigDecimal)] =
      Future.fromTry(accountId).flatMap { id =>
        val accounts = db
          .run(new AccountController().readAccountsQuery(false, Some(List(id))))
          .map(_.toList)

        val result: Future[Try[((AccountsRow, AccountTypesRow), BigDecimal)]] =
          accounts.map {
            case x :: Nil => {
              x match {
                case ((accountRow, Some(accountTypeRow)), Some(balance)) =>
                  Success(((accountRow, accountTypeRow), balance))
                case ((accountRow, Some(accountTypeRow)), None) =>
                  Success(
                    ((accountRow, accountTypeRow), accountRow.initialAmount)
                  )
                case _ =>
                  Failure(new Exception("No account type or no balance"))
              }
            }
            case x :: xs => Failure(new Exception("Multiple accounts found"))
            case Nil =>
              Failure(new Exception("Account not present in the database"))
          }

        result.flatMap(Future.fromTry(_))
      }

    account.onComplete { x =>
      x match {
        case Success(s) => logger.info(s.toString)
        case Failure(e) => logger.error(s"${e.toString}: ${e.getMessage}")
      }
    }

    account
  }

  private def getAccountIdFromRequest(
      request: Request[MultipartFormData[TemporaryFile]]
  ): Try[Long] = {
    val accountIds: Try[List[Long]] =
      request.body.dataParts.get("importAccountId") match {
        case Some(a) =>
          a match {
            case s: Seq[String] => Success(s.map(_.toLong).toList)
            case _ => Failure(new Exception("Account wrapped in wrong type"))
          }
        case None => Failure(new Exception("Missing account"))
      }

    val accountId: Try[Long] = accountIds match {
      case Success(accountId :: Nil) => Success(accountId)
      case Success(accountId :: accountIds) =>
        Failure(new Exception("Multiple accounts"))
      case Success(Nil) => Failure(new Exception("Missing account"))
      case Failure(e)   => Failure(e)
    }

    accountId match {
      case Success(s) => logger.info(s.toString)
      case Failure(e) => logger.error(s"${e.toString}: ${e.getMessage}")
    }

    accountId
  }
}
