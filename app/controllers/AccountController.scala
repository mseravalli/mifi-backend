package controllers

import java.time.format.DateTimeFormatter

import helpers.Global
import helpers.Formatter
import models._

import com.github.mauricio.async.db.util.ExecutorServiceUtils.CachedExecutionContext
import java.sql.Date
import javax.inject.Singleton
import org.slf4j.{LoggerFactory, Logger}
import play.api.mvc._
import play.api.libs.json._
import scala.async.Async.{async, await}
import slick.driver.PostgresDriver.api._

object AccountController {
  def readAccountsQuery(accountName: String, endDate: Date = Date.valueOf("2100-12-31")) = {
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

  def readAccount(accountName: String): Action[AnyContent] =  Action.async { request => async {
    val endDate = Date.valueOf(request.getQueryString("endDate") .getOrElse("2100-12-31"))

    val res = await {
      Global.db.run(AccountController.readAccountsQuery(accountName, endDate))
    }

    val jsonRes = Json.toJson(res.head._1)(JsonFormats.accountFmt).as[JsObject] ++ Json.obj("balance" -> Json.toJson(res.head._2))

    Ok(jsonRes)
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

