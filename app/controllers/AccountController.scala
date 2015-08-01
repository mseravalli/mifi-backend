package controllers

import helpers.Global
import helpers.Formatter

import com.github.mauricio.async.db.util.ExecutorServiceUtils.CachedExecutionContext
import com.github.mauricio.async.db.ResultSet
import javax.inject.Singleton
import models.Account
import org.joda.time.{LocalDate}
import org.slf4j.{LoggerFactory, Logger}
import play.api.mvc._
import play.api.libs.json._
import scala.async.Async.{async, await}
import scala.collection.mutable.ArrayBuffer
import scala.concurrent.Future

object AccountController {
  val getAccountsQuery: String =  """
      SELECT account,
        initial_amount,
        rows_to_skip,
        delimiter,
        date_format,
        final_row,
        transaction_date,
        exchange_date,
        receiver,
        purpose,
        amount_in,
        amount_out,
        currency,
        currency_default
      FROM accounts
      WHERE account LIKE ?
      ORDER BY account
    """

  def convertToList(row: Any): List[Int] = {
    row.asInstanceOf[ArrayBuffer[Int]] match {
      case null => List()
      case x: ArrayBuffer[Int] => x.toList
    }
  }

  def getAccounts(): Future[Map[String, Account]] = {
    getAccount("%")
  }

  def getAccount(accountId: String): Future[Map[String, Account]] = { async {
    val queryResult = await { Global.pool.sendPreparedStatement(getAccountsQuery, Array(accountId)) }
    val res = queryResult.rows.map { rows => rows.map{ r =>
      r("account").asInstanceOf[String] -> Account(
        r("account").asInstanceOf[String],
        r("initial_amount").asInstanceOf[BigDecimal],
        r("rows_to_skip").asInstanceOf[Int],
        r("delimiter").asInstanceOf[String],
        r("date_format").asInstanceOf[String],
        r("final_row").asInstanceOf[String],
        r("transaction_date").asInstanceOf[Int],
        r("exchange_date").asInstanceOf[Int],
        convertToList(r("receiver")),
        convertToList(r("purpose")),
        r("amount_in").asInstanceOf[Int],
        r("amount_out").asInstanceOf[Int],
        r("currency").asInstanceOf[Int],
        r("currency_default").asInstanceOf[String]
      )
    }.toMap}
    res.getOrElse(Map[String,Account]())
  }}

  val getBalanceQuery: String =  """
      SELECT SUM(amount) as total
      FROM transactions
      WHERE
        account_number LIKE ?
        AND
        transaction_date < ?
    """
  def getBalance(a: String, endDate: LocalDate): Future[BigDecimal] = async {
    val acc = a match {
      case "*" => "%";
      case "total" => "%";
      case s => s
    }
    var accountInitialAmounts = await {getAccounts}
    val total: BigDecimal = accountInitialAmounts.map(a => a._2.initialAmount).sum
    accountInitialAmounts = accountInitialAmounts + ("%" -> Account("%",total))
    val account = accountInitialAmounts(acc)
    val insertValues: Array[Any] = Array(acc, endDate)
    val queryResult = await { Global.pool.sendPreparedStatement(getBalanceQuery, insertValues) }
    val r = queryResult.rows.get.head
    r("total") match {
      case null => account.initialAmount
      case x => account.initialAmount + x.asInstanceOf[BigDecimal]
    }
  }

  def getBalance(account: String): Future[BigDecimal] = {
    getBalance(account, new LocalDate())
  }

  def timeSeriesQuery(dateFormat: String): String = {
    val format = Formatter.normalizeDateFormat(dateFormat)
    s"""
      SELECT
        t_0.account_number AS t_0_account,
        to_char(t_0.transaction_date,'$format') AS t_0_date,
        t_0.amount AS t_0_amount
      FROM transactions t_0
      WHERE
        transaction_date BETWEEN ? AND ?
      ORDER BY transaction_date
    """
  }

  def createTimeSeries(seriesIn: ResultSet,
      startDate: LocalDate,
      endDate: LocalDate,
      dateFormat: String): Future[JsObject] = async {
    var seriesOut: JsArray = Json.arr()
    val accountBalances:Map[String,Future[BigDecimal]] = await{getAccounts}.map(a => {
      a._1 -> getBalance(a._1, startDate)
    })
    var balances:Map[String,BigDecimal] = await{
      Future.traverse(accountBalances) { case (k, fv) => fv.map(k -> _) } map(_.toMap)
    }
    balances = balances + ("total" -> await{getBalance("total", startDate)})

    var inPos = 0

    var columns = Json.arr(JsString("date"))
    balances.foreach{ a =>
      columns = columns :+ JsString(a._1)
    }
    seriesOut = seriesOut :+ columns

    val timeRange = Formatter.getTimeRange(dateFormat, startDate, endDate)
    for (unit <- 0 to timeRange) {
      val date = Formatter.incrementDate(dateFormat, startDate, unit)
      while (inPos < seriesIn.length && seriesIn(inPos)("t_0_date").asInstanceOf[String] == date) {
        val acc = seriesIn(inPos)("t_0_account").asInstanceOf[String]
        val nextAmount = seriesIn(inPos)("t_0_amount").asInstanceOf[BigDecimal]
        balances = balances updated (acc, balances(acc) + nextAmount)
        balances = balances updated ("total", balances("total") + nextAmount)
        inPos += 1
      }
      var jsRow = Json.arr(JsString(date))
      balances.foreach{ a =>
        jsRow = jsRow :+ JsNumber(balances(a._1))
      }

      seriesOut = seriesOut :+ jsRow
    }
    Json.obj("data" -> seriesOut)
  }
}

@Singleton
class AccountController extends Controller {
  import AccountController._
  import models.JsonFormats

  private final val logger: Logger = LoggerFactory.getLogger(classOf[AccountController])

  def readAccounts(): Action[AnyContent] = Action.async { async {
    val accounts = await {getAccounts}
    val tmp = accounts.map{x => Json.toJson(x._2)(JsonFormats.accountFmt)}
    var res: JsObject = Json.obj()
    for (a <- accounts) {
//      res = res + (a._1 -> JsNumber(a._2.initialAmount))
      res = res + (a._1 -> Json.toJson(accounts.values.head)(JsonFormats.accountFmt))
    }
    // Ok( Json.obj("accounts" -> res) )
    Ok( Json.obj("accounts" -> tmp) )
  }}

  def readBalance(account: String) = Action.async { async {
    Ok(Json.obj( "balance" -> JsNumber(await{getBalance(account)})))
  }}

  def timeSeries(): Action[JsValue] = Action.async(parse.json){ request => async {
    val jsonRequest = request.body
    val dateFormat = Formatter.normalizeDateFormat((jsonRequest \ "sumRange").as[String])
    val startDate = new LocalDate((jsonRequest \ "startDate").as[String])
    val endDate =   new LocalDate((jsonRequest \ "endDate").as[String])
    val insertValues: Array[Any] = Array(startDate, endDate)
    val query = timeSeriesQuery(dateFormat)
    val queryResult = await { Global.pool.sendPreparedStatement(query, insertValues) }
    val series = await{ createTimeSeries(queryResult.rows.get, startDate, endDate, dateFormat) }
    Ok(series)
  }}
}

