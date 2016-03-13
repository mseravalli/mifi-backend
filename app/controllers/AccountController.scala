package controllers

import java.time.format.DateTimeFormatter

import helpers.Global
import helpers.Formatter
import models._

import com.github.mauricio.async.db.util.ExecutorServiceUtils.CachedExecutionContext
import com.github.mauricio.async.db.ResultSet
import java.sql.Date
import javax.inject.Singleton
import models.Account
import org.joda.time.{DateTime, LocalDate}
import org.slf4j.{LoggerFactory, Logger}
import play.api.mvc._
import play.api.libs.json._
import scala.async.Async.{async, await}
import scala.collection.mutable.ArrayBuffer
import scala.concurrent.Future
import slick.driver.PostgresDriver.api._

object AccountController {
  val getAccountsQuery: String =  """
    SELECT
      a.account,
      a.initial_amount,
      a.rows_to_skip,
      a.delimiter,
      a.date_format,
      a.final_row,
      a.transaction_date_pos,
      a.exchange_date_pos,
      a.receiver_pos,
      a.purpose_pos,
      a.amount_in_pos,
      a.amount_out_pos,
      a.currency_pos,
      a.currency_default,
      SUM(t.amount) + a.initial_amount AS balance
    FROM accounts a JOIN transactions t ON a.account = t.account_number
    WHERE account LIKE ?
        AND
        t.transaction_date < ?
    GROUP BY a.account
    ORDER BY a.account
  """
  def readAccountsQuery(accountName: String, endDate: Date) = {
    (for {
      (a, t) <- Tables.Accounts joinLeft (Tables.Transactions.filter(_.transactionDate < endDate)) on (_.account === _.accountNumber)
    } yield (a, t.map(_.amount)))
      .groupBy(_._1)
      .map { case (account, group) => (
        account,
        group.map(_._2.flatten).sum + account.initialAmount
      )}
      .sortBy(_._1.account)
      .result
  }

  def convertToList(row: Any): List[Int] = {
    row.asInstanceOf[ArrayBuffer[Int]] match {
      case null => List()
      case x: ArrayBuffer[Int] => x.toList
    }
  }

  def getAccounts(): Future[Map[String, Account]] = {
    getAccount("%")
  }

  def getAccounts(endDate: LocalDate): Future[Map[String, Account]] = {
    getAccount(endDate, "%")
  }

  def getAccount(accountId: String): Future[Map[String, Account]] = {
    getAccount(new LocalDate("2100-12-31"), accountId)
  }

  def getAccount(endDate: LocalDate, accountId: String): Future[Map[String, Account]] = { async {
    val queryValues = Array(accountId, endDate)
    val queryResult = await { Global.pool.sendPreparedStatement(getAccountsQuery, queryValues) }
    val res = queryResult.rows.map { rows => rows.map{ r =>
      r("account").asInstanceOf[String] -> Account(
        r("account").asInstanceOf[String],
        r("initial_amount").asInstanceOf[BigDecimal],
        r("rows_to_skip").asInstanceOf[Int],
        r("delimiter").asInstanceOf[String],
        r("date_format").asInstanceOf[String],
        r("final_row").asInstanceOf[String],
        r("transaction_date_pos").asInstanceOf[Int],
        r("exchange_date_pos").asInstanceOf[Int],
        convertToList(r("receiver_pos")),
        convertToList(r("purpose_pos")),
        r("amount_in_pos").asInstanceOf[Int],
        r("amount_out_pos").asInstanceOf[Int],
        r("currency_pos").asInstanceOf[Int],
        r("currency_default").asInstanceOf[String],
        r("balance").asInstanceOf[BigDecimal]
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

  def timeSeriesQuery(startDate: Date, endDate: Date) = {
    Tables.Transactions
      .filter(x => x.transactionDate >= startDate && x.transactionDate < endDate)
      .sortBy(_.transactionDate)
      .result
  }

  def timeIterator(startDate: Date, endDate: Date, dateFormat: String) = {
    val start: java.time.LocalDate = startDate.toLocalDate
    val end: java.time.LocalDate = endDate.toLocalDate
    Iterator.iterate(start)(Formatter.incrementDate(_, dateFormat) ) takeWhile (_ isBefore end)
  }

  def createTimeSeries(startDate: Date, endDate: Date, dateFormat: String) = async {
    val accounts = await {
      Global.db.run(AccountController.readAccountsQuery("%", startDate))
    }

    val accountBalances = accounts.map{ x => (x._1.account, x._2.getOrElse(BigDecimal(0))) }
    val totalBalance: BigDecimal = accountBalances.map(_._2).sum
    val balances = accountBalances // :+ ("total", totalBalance)

    val transactions = await {
      Global.db.run(AccountController.timeSeriesQuery(startDate, endDate))
    }

    val groupedTransactions = transactions
      .groupBy( x => (x.transactionDate.map(_.toLocalDate.format(DateTimeFormatter.ofPattern(dateFormat))), x.accountNumber ))
      .map(x => (x._1 -> x._2.map(_.amount.getOrElse(BigDecimal(0))).sum ))
      .withDefaultValue(BigDecimal(0))

    var previousBalance = balances.map(_._2)
    val timeSeries = timeIterator(startDate, endDate, dateFormat).map { i =>
      val currentDate = i.format(DateTimeFormatter.ofPattern(dateFormat))
      val currentBalance = balances
        .map(x => groupedTransactions((Some(currentDate), Some(x._1))))
        .zip(previousBalance)
        .map { case (a, b) => a + b }
      previousBalance = currentBalance
      currentDate +: currentBalance :+ currentBalance.sum
    }.toList

    val header = "date" +: balances.map(_._1) :+ "total"

    header +: timeSeries
  }
}

@Singleton
class AccountController extends Controller {
  import AccountController._
  import models.JsonFormats

  private final val logger: Logger = LoggerFactory.getLogger(classOf[AccountController])

  def readAccounts(): Action[AnyContent] =  Action.async { request => async {
    val endDate = Date.valueOf(request.getQueryString("endDate") .getOrElse("2100-12-31"))

    val res = await {
      Global.db.run(AccountController.readAccountsQuery("%", endDate))
    }

    val jsonRes = res.map { x =>
      Json.toJson(x._1)(JsonFormats.accountFmt).as[JsObject] ++ Json.obj("balance" -> Json.toJson(x._2))
    }

    Ok(Json.obj("accounts" -> jsonRes) )
  }}

  def readBalance(account: String) = Action.async { async {
    Ok(Json.obj( "balance" -> JsNumber(await{getBalance(account)})))
  }}

  def timeSeries(): Action[AnyContent] =  Action.async { request => async {
    val dateFormat = Formatter.normalizeDateFormat(request.getQueryString("sumRange").getOrElse(""))
    val startDate = Date.valueOf(request.getQueryString("startDate") .getOrElse("1900-01-01"))
    val endDate = Date.valueOf(request.getQueryString("endDate") .getOrElse("2100-12-31"))

    val res = await{createTimeSeries(startDate, endDate, dateFormat)}
    val jsonRes = res.map{ x => x.map {
      case b:BigDecimal => JsNumber(b)
      case s:String => JsString(s)
    }}

    Ok(Json.obj("data" -> jsonRes))
  }}
}

