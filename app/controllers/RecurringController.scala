package controllers

import java.sql.Date

import helpers.Formatter

import models._

import javax.inject._
import play.api.db.slick._
import play.api.mvc._
import play.api.libs.json._
import play.api.mvc.PlayBodyParsers
import scala.async.Async.{async, await}
import scala.concurrent.ExecutionContext
import slick.jdbc.JdbcProfile
import slick.jdbc.PostgresProfile.api._

@Singleton
class RecurringController @Inject()(implicit ec: ExecutionContext,
                                      protected val dbConfigProvider: DatabaseConfigProvider,
                                      cc: ControllerComponents,
                                      pbp:PlayBodyParsers)
    extends AbstractController(cc) with HasDatabaseConfigProvider[JdbcProfile] {
  private def readTransactionsQuery(startDate: Date,
                            endDate: Date,
                            categories: Array[String],
                            subCategories: Array[String],
                            accounts: Option[Seq[Long]] = None) = {
    val accountsTable = Tables.Accounts.filter( a =>
      accounts.map(_.foldLeft(a.id =!= a.id)((res, x) => res || (a.id === x)))
        .getOrElse(a.id === a.id)
    )
    Tables.Transactions
      .filter(t => t.transactionDate >= startDate && t.transactionDate <= endDate
        && categories.foldLeft(t.category =!= t.category)((res,c)=> res || (t.category like c) )
        && subCategories.foldLeft(t.subCategory =!= t.subCategory)((res,s)=> res || (t.subCategory like s) )
      )
      .join(accountsTable).on(_.accountId === _.id)
      .result
  }

  private def readTaggedTransactionsQuery(startDate: Date,
                            endDate: Date,
                            categories: Array[String],
                            subCategories: Array[String],
                            accounts: Option[Seq[Long]] = None) = {
    val accountsTable = Tables.Accounts.filter( a =>
      accounts.map(_.foldLeft(a.id =!= a.id)((res, x) => res || (a.id === x)))
        .getOrElse(a.id === a.id)
    )
    Tables.Transactions
      .filter(t => t.transactionDate >= startDate && t.transactionDate <= endDate
        && categories.foldLeft(t.category =!= t.category)((res,c)=> res || (t.category like c) )
        && subCategories.foldLeft(t.subCategory =!= t.subCategory)((res,s)=> res || (t.subCategory like s) )
      )
      .join(accountsTable).on(_.accountId === _.id)
      .result
  }


  private def updateTransactionQuery(id: Long, category: String, subCategory: String, comment: String) = {
    Tables.Transactions.filter(t => t.id === id)
      .map(x => (x.category, x.subCategory, x.comment ))
      .update(Some(category), Some(subCategory), Some(comment))
  }

  def readTransactions(): Action[AnyContent] = Action.async { request => async {
    val startDate = Date.valueOf(request.getQueryString("startDate").getOrElse("1900-01-01"))
    val endDate = Date.valueOf(request.getQueryString("endDate").getOrElse("2100-12-31"))
    val categories: Array[String] = request.getQueryString("categories")
      .map(x => x.split(","))
      .getOrElse(new Array[String](0))
    val subCategories: Array[String] = request.getQueryString("subCategories")
      .map(x => x.split(","))
      .getOrElse(Array[String]("%"))
      .map{x => x match {case "" => "%"; case x => x}}
    val accounts = request.getQueryString("accounts").filter(! _.isEmpty)
      .map(x => x.split(",").map(_.toLong).toSeq)

    val res: Seq[(TransactionsRow, AccountsRow)] = await {
      db.run(readTransactionsQuery(startDate, endDate, categories, subCategories, accounts))
    }

    val jsonRes = Json.obj("transactions" -> res.map(
      x => Json.toJson(x._1)(JsonFormats.transactionFmt).as[JsObject]
        .++(Json.obj("accountName" -> Json.toJson(x._2.name)))
    ))

    Ok(jsonRes)
  }}

  def readRecurring(): Action[AnyContent] = Action.async { request => async {
    val startDate = Date.valueOf(request.getQueryString("startDate").getOrElse("1900-01-01"))
    val endDate = Date.valueOf(request.getQueryString("endDate").getOrElse("2100-12-31"))
    val categories: Array[String] = request.getQueryString("categories")
      .map(x => x.split(","))
      .getOrElse(new Array[String](0))
    val subCategories: Array[String] = request.getQueryString("subCategories")
      .map(x => x.split(","))
      .getOrElse(Array[String]("%"))
      .map{x => x match {case "" => "%"; case x => x}}
    val accounts = request.getQueryString("accounts").filter(! _.isEmpty)
      .map(x => x.split(",").map(_.toLong).toSeq)


    // static raw_data = {
    //   "monthly": {
    //     "finance-other": [
    //       [   "date",   "total",      "min",    "max",         "in",        "out"],
    //       ["2020-12",   5806.03,   -4972.35, 10778.38,      6729.59,     -3611.25],
    //       ["2021-01",  13907.27,  -23596.42, 37503.69,     20524.85,    -20291.58],
    //       ["2021-02",   3082.36, -169010.18,172092.54,    166491.16,   -166195.15],
    //     ],
    //     "house-other": [
    //       [   "date",   "total",      "min",    "max",         "in",        "out"],
    //       ["2020-12",   5806.03,   -4972.35, 10778.38,      6729.59,     -3611.25],
    //       ["2021-01",  13907.27,  -23596.42, 37503.69,     20524.85,    -20291.58],
    //       ["2021-02",   3082.36, -169010.18,172092.54,    166491.16,   -166195.15],
    //     ],
    //   },
    //   "yearly": {
    //     "living-other": [
    //       [   "date",   "total",      "min",    "max",         "in",        "out"],
    //       ["2020-12",   5806.03,   -4972.35, 10778.38,      6729.59,     -3611.25],
    //       ["2021-01",  13907.27,  -23596.42, 37503.69,     20524.85,    -20291.58],
    //       ["2021-02",   3082.36, -169010.18,172092.54,    166491.16,   -166195.15],
    //     ],
    //     "mobility-other": [
    //       [   "date",   "total",      "min",    "max",         "in",        "out"],
    //       ["2020-12",   5806.03,   -4972.35, 10778.38,      6729.59,     -3611.25],
    //       ["2021-01",  13907.27,  -23596.42, 37503.69,     20524.85,    -20291.58],
    //       ["2021-02",   3082.36, -169010.18,172092.54,    166491.16,   -166195.15],
    //     ],
    //   },
    // };
    val jsonRes = Json.obj("recurring" -> 1, "giovanni" -> 2)
    Ok(jsonRes)
  }}
}

