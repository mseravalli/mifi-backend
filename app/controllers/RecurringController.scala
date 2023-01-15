package controllers

import java.sql.Date
import java.text.SimpleDateFormat

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
import play.api.Logging

@Singleton
class RecurringController @Inject() (implicit
    ec: ExecutionContext,
    protected val dbConfigProvider: DatabaseConfigProvider,
    cc: ControllerComponents,
    pbp: PlayBodyParsers
) extends AbstractController(cc)
    with HasDatabaseConfigProvider[JdbcProfile]
    with Logging {
  private def readRecurringQuery(
      startDate: Date,
      endDate: Date,
      categories: Array[String],
      subCategories: Array[String],
      accounts: Option[Seq[Long]] = None
  ) = {
    val accountsTable = Tables.Accounts.filter(a =>
      accounts
        .map(_.foldLeft(a.id =!= a.id)((res, x) => res || (a.id === x)))
        .getOrElse(a.id === a.id)
    )
    val recurringTransactions =
      Tables.TaggedTransactions.filter(_.tag === "recurring")
    Tables.Transactions
      .filter(t =>
        t.transactionDate >= startDate && t.transactionDate <= endDate
          && categories.foldLeft(t.category =!= t.category)((res, c) =>
            res || (t.category like c)
          )
          && subCategories.foldLeft(t.subCategory =!= t.subCategory)((res, s) =>
            res || (t.subCategory like s)
          )
      )
      .join(recurringTransactions)
      .on(_.id === _.transactionId) // => (Transactions, TaggedTransactions)
      .join(Tables.TaggedTransactions)
      .on(
        _._1.id === _.transactionId
      ) // => ((Transactions, TaggedTransactions), TaggedTransactions)
      .join(accountsTable)
      .on(
        _._1._1.accountId === _.id
      ) // => (((Transactions, TaggedTransactions), TaggedTransactions), Accounts)
      .result
  }

  /** Request example:
    * /recurring?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2016-03-31&categories=house,other,finance,mobility&subCate
    */
  def readRecurring(): Action[AnyContent] = Action.async { request =>
    async {
      val dateFormat = Formatter.normalizeDateFormat(
        request.getQueryString("sumRange").getOrElse("")
      )
      val startDate = Date.valueOf(
        request.getQueryString("startDate").getOrElse("1900-01-01")
      )
      val endDate =
        Date.valueOf(request.getQueryString("endDate").getOrElse("2100-12-31"))
      val categories: Array[String] = request
        .getQueryString("categories")
        .map(x => x.split(","))
        .getOrElse(new Array[String](0))
      val subCategories: Array[String] = request
        .getQueryString("subCategories")
        .map(x => x.split(","))
        .getOrElse(Array[String]("%"))
        .map { x => x match { case "" => "%"; case x => x } }
      val accounts = request
        .getQueryString("accounts")
        .filter(!_.isEmpty)
        .map(x => x.split(",").map(_.toLong).toSeq)

      val format = Formatter.normalizeDateFormat(dateFormat)
      val sdf = new SimpleDateFormat(format)

      val raw = await {
        db.run(
          readRecurringQuery(
            startDate,
            endDate,
            categories,
            subCategories,
            accounts
          )
        )
      }

      // logger.error("raw")
      // logger.error(raw.toString)

      val inOutCategories = Array("in", "out")

      val recurringData = raw
        .map(x => (x._1._2.tag, x._1._1._1)) // => (tag, Transactions)
        .filter(_._1 != "recurring")
        .groupBy(
          _._1
        ) // => "monthly" -> ("monthly", ...), "yearly" -> ("yearly", ...)
        .map { x =>
          (
            x._1,
            x._2
              .map(x => x._2) // keep only Transactions
              .groupBy(x =>
                s"${x.category.getOrElse("")}/${x.subCategory.getOrElse("")}"
              )
              .map { x =>
                (
                  x._1,
                  x._2
                    .map(x =>
                      (
                        sdf.format(x.transactionDate.getOrElse("")),
                        x.amount.getOrElse(BigDecimal(0.0))
                      )
                    ) // => (date, amount)
                    .groupBy(_._1) // group by date
                    .map { x =>
                      (
                        x._1,
                        Map()
                          + ("total" -> x._2.map(_._2).sum)
                          + ("max" -> x._2.map(_._2).filter(_ >= 0).sum)
                          + ("min" -> x._2.map(_._2).filter(_ < 0).sum)
                          + ("in" -> x._2.map(_._2).filter(_ >= 0).sum)
                          + ("out" -> x._2.map(_._2).filter(_ < 0).sum)
                      )
                    }
                )
              }
          )
        }

      logger.debug("recurringData")
      logger.debug(recurringData.toString)

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

      val jsonRes = Json.toJson(
        recurringData.map(x =>
          (
            x._1,
            x._2.map(y =>
              (
                y._1,
                Formatter
                  .formatSeries(
                    y._2,
                    startDate,
                    endDate,
                    inOutCategories,
                    dateFormat
                  )
                  .\\("data")
                  .head
              )
            )
          )
        )
      )
      Ok(jsonRes)
    }
  }
}
