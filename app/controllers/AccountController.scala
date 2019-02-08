package controllers

import helpers.Formatter
import models._

import java.sql.Date
import java.time.format.DateTimeFormatter
import javax.inject._
import org.slf4j.{LoggerFactory, Logger}
import play.api.db.slick._
import play.api.mvc._
import play.api.libs.json._
import scala.async.Async.{async, await}
import scala.concurrent.ExecutionContext
import slick.jdbc.JdbcProfile
import slick.jdbc.PostgresProfile.api._

@Singleton
class AccountController @Inject() (implicit ec: ExecutionContext,
                                   protected val dbConfigProvider: DatabaseConfigProvider,
                                   cc: ControllerComponents)
    extends AbstractController(cc) with HasDatabaseConfigProvider[JdbcProfile] {

  // return a map with the accounts and their balance
  def readAccountsQuery(accounts: Option[Seq[Long]] = None,
                        endDate: Date = Date.valueOf("2100-12-31")) = {
    (for {
      (a, t) <- Tables.Accounts.filter(a =>
        accounts.map(_.foldLeft(a.id =!= a.id)((res, x) => res || (a.id === x)))
          .getOrElse(a.id === a.id)
        )
        .joinLeft(Tables.AccountTypes).on(_.accountType === _.id)
        .joinLeft(Tables.Transactions.filter(_.transactionDate < endDate)).on(_._1.id === _.accountId)
    } yield (a, t.map(_.amount)))
      .groupBy(_._1)
      .map{ x =>
        (x._1 , x._2.map(_._2.flatten).sum + x._1._1.initialAmount)
      }
      .sortBy(_._1._1.name)
      .result
  }

  def timeSeriesQuery(startDate: Date, endDate: Date) = {
    Tables.Transactions
      .filter(x => x.transactionDate >= startDate && x.transactionDate < endDate)
      .sortBy(_.transactionDate)
      .result
  }

  def createTimeSeries(startDate: Date,
                       endDate: Date,
                       dateFormat: String,
                       requestedAccounts: Option[Seq[Long]]) = async {
    val accounts = await {
      db.run(readAccountsQuery(requestedAccounts, startDate))
    }

    val accountBalances: Seq[(models.AccountsRow, scala.math.BigDecimal)] =
      accounts.map{ x => (x._1._1, x._2.getOrElse( x._1._1.initialAmount )) }

    val transactions = await {
      db.run(timeSeriesQuery(startDate, endDate))
    }

    // group transactions per time unit (day, month, year) and per account
    val groupedTransactions = transactions
      .groupBy( x => (x.transactionDate.map(_.toLocalDate.format(DateTimeFormatter.ofPattern(dateFormat))), x.accountId ))
      .map(x => (x._1 -> x._2.map(_.amount.getOrElse(BigDecimal(0))).sum ))
      .withDefaultValue(BigDecimal(0))

    var previousBalance = accountBalances.map(_._2)
    // TODO: change with fold left
    val timeSeries = Formatter.timeIterator(startDate, endDate, dateFormat).map { i =>
      val currentDate = i.format(DateTimeFormatter.ofPattern(dateFormat))
      val currentBalance = accountBalances
        .map(x => groupedTransactions((Some(currentDate), x._1.id)))
        .zip(previousBalance)
        .map { case (a, b) => a + b }
      previousBalance = currentBalance
      currentDate +: currentBalance :+ currentBalance.sum
    }.toList

    val header = "date" +: accountBalances.map(_._1.name) :+ "total"

    header +: timeSeries
  }

  private final val logger: Logger = LoggerFactory.getLogger(classOf[AccountController])

  def readAccounts(): Action[AnyContent] =  Action.async { request => async {
    val endDate = Date.valueOf(request.getQueryString("endDate") .getOrElse("2100-12-31"))

    val res = await {
      db.run(readAccountsQuery(endDate = endDate))
    }

    val jsonRes = res.map { x =>
      Json.toJson(x._1._1)(JsonFormats.accountFmt).as[JsObject]
        .++(x._1._2.map(Json.toJson(_)(JsonFormats.accountTypeFmt)).getOrElse(Json.obj()).as[JsObject])
        .++(Json.obj("balance" -> Json.toJson(x._2)))
        // necessary due to the overlapping of the property "name"
        .++(Json.obj("name" -> Json.toJson(x._1._1.name)))
    }

    Ok(Json.obj("accounts" -> jsonRes) )
  }}

  def readAccount(accountId: String): Action[AnyContent] =  Action.async { request => async {
    val endDate = Date.valueOf(request.getQueryString("endDate") .getOrElse("2100-12-31"))

    val res = await {
      db.run(readAccountsQuery(Some(List(accountId.toLong)), endDate))
    }

    res.toList match {
      case x::Nil => Ok(Json.toJson(x._1._1)(JsonFormats.accountFmt).as[JsObject]
        .++(x._1._2.map(Json.toJson(_)(JsonFormats.accountTypeFmt)).getOrElse(Json.obj()).as[JsObject])
        .++(Json.obj("balance" -> Json.toJson(x._2.getOrElse(x._1._1.initialAmount))))
          // necessary due to the overlapping of the property "name"
        .++(Json.obj("name" -> Json.toJson(x._1._1.name))) )
      case Nil => NotFound(JsString("Account not Found"))
      case _ => InternalServerError
    }

  }}

  def timeSeries(): Action[AnyContent] =  Action.async { request => async {
    val dateFormat = Formatter.normalizeDateFormat(request.getQueryString("sumRange").getOrElse(""))
    val startDate = Date.valueOf(request.getQueryString("startDate").getOrElse("1900-01-01"))
    val endDate = Date.valueOf(request.getQueryString("endDate").getOrElse("2100-12-31"))
    val accounts = request.getQueryString("accounts")
      .map(x => x.split(",").map(_.toLong).toSeq)

    val res = await{createTimeSeries(startDate, endDate, dateFormat, accounts)}
    val jsonRes = res.map{ x => x.map {
      case b:BigDecimal => JsNumber(b)
      case s:String => JsString(s)
      case x => JsString(x.toString)
    }}

    Ok(Json.obj("data" -> jsonRes))
  }}
}

