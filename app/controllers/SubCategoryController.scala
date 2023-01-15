package controllers

import java.sql.Date
import java.text.SimpleDateFormat

import helpers.Formatter
import models.{Category, JsonFormats, Tables}
import javax.inject._

import play.api.db.slick._
import play.api.mvc._
import play.api.libs.json._

import scala.async.Async.{async, await}
import scala.concurrent.{Future, ExecutionContext}
import slick.jdbc.JdbcProfile
import slick.jdbc.PostgresProfile.api._

@Singleton
class SubCategoryController @Inject() (implicit
    ec: ExecutionContext,
    protected val dbConfigProvider: DatabaseConfigProvider,
    cc: ControllerComponents
) extends AbstractController(cc)
    with HasDatabaseConfigProvider[JdbcProfile] {
  def getSubCategoryTransactions(
      isSharingRatioEnabled: Boolean,
      startDate: Date,
      endDate: Date,
      category: String,
      subCategories: Array[String],
      accounts: Option[Seq[Long]] = None
  ) = {
    val accountsTable = Tables.Accounts.filter(a =>
      accounts
        .map(_.foldLeft(a.id =!= a.id)((res, x) => res || (a.id === x)))
        .getOrElse(a.id === a.id)
    )

    Tables.Transactions
      .filter(t =>
        t.transactionDate > startDate && t.transactionDate < endDate
          && subCategories.foldLeft(t.subCategory =!= t.subCategory)(
            (res, sc) =>
              res || ((t.category like category) && (t.subCategory like sc))
          )
      )
      .join(accountsTable)
      .on(_.accountId === _.id)
      .map { x =>
        (
          x._1.transactionDate,
          x._1.subCategory,
          if (isSharingRatioEnabled)
            x._2.sharingRatio * x._1.amount
          else
            x._1.amount
        )
      }
      .result
  }

  // the flow can be either in or out
  def totalFlowSubCatQuery(
      isSharingRatioEnabled: Boolean,
      startDate: Date,
      endDate: Date,
      flow: String,
      category: String,
      subCategories: Array[String],
      accounts: Option[Seq[Long]] = None
  ) = {
    val accountsTable = Tables.Accounts.filter(a =>
      accounts
        .map(_.foldLeft(a.id =!= a.id)((res, x) => res || (a.id === x)))
        .getOrElse(a.id === a.id)
    )

    Tables.Transactions
      .filter(t =>
        t.transactionDate > startDate && t.transactionDate < endDate
          && subCategories.foldLeft(t.subCategory =!= t.subCategory)(
            (res, sc) =>
              res || ((t.category like category) && (t.subCategory like sc))
          )
      )
      .join(accountsTable)
      .on(_.accountId === _.id)
      .groupBy(_._1.subCategory)
      .map { x =>
        (
          x._1,
          x._2.map { y =>
            if (isSharingRatioEnabled)
              y._2.sharingRatio * y._1.amount
            else
              y._1.amount
          }.sum
        )
      }
      .filter(x =>
        flow match {
          case "in"  => x._2 > BigDecimal(0)
          case "out" => x._2 < BigDecimal(0)
        }
      )
      .sortBy(_._1.asc)
      .result
  }

  /** Request example:
    */
  def aggregateSubCategory(): Action[AnyContent] = Action.async { request =>
    async {
      val dateFormat = Formatter.normalizeDateFormat(
        request.getQueryString("sumRange").getOrElse("")
      )
      val startDate = Date.valueOf(
        request.getQueryString("startDate").getOrElse("1900-01-01")
      )
      val endDate =
        Date.valueOf(request.getQueryString("endDate").getOrElse("2100-12-31"))
      val isSharingRatioEnabled = request
        .getQueryString("isSharingRatioEnabled")
        .map(_.toBoolean)
        .getOrElse(true)
      val categories = request
        .getQueryString("categories")
        .getOrElse("")
        .split(",")
        .map(_.trim)
        .sorted
      val subCategories = request
        .getQueryString("subCategories")
        .getOrElse("")
        .split(",")
        .map(_.trim)
        .sorted
      val accounts = request
        .getQueryString("accounts")
        .filter(!_.isEmpty)
        .map(x => x.split(",").map(_.toLong).toSeq)

      val format = Formatter.normalizeDateFormat(dateFormat)
      val sdf = new SimpleDateFormat(format)

      val raw = await {
        db.run(
          getSubCategoryTransactions(
            isSharingRatioEnabled,
            startDate,
            endDate,
            categories.head,
            subCategories,
            accounts
          )
        )
      }

      val totalFlow = raw
        .map(x =>
          (
            sdf.format(x._1.getOrElse("")),
            x._2.getOrElse(""),
            x._3.getOrElse(BigDecimal(0.0))
          )
        )
        // from now on operating with (date, category, amount)
        .groupBy(x => x._1)
        .map { x =>
          (
            x._1,
            // x._2.groupBy(_._2).map(y => (y._1 -> y._2.map(_._3).sum))
            x._2
              .groupBy(_._2)
              .map(y => (y._1 + " in" -> y._2.map(_._3).filter(_ >= 0).sum))
              ++ x._2
                .groupBy(_._2)
                .map(y => (y._1 + " out" -> y._2.map(_._3).filter(_ < 0).sum))
              + ("total" -> x._2.map(_._3).sum)
              // + ("max" -> x._2.groupBy(_._2).map(y => y._2.map(_._3).sum).filter(_ > 0).sum)
              // + ("min" -> x._2.groupBy(_._2).map(y => y._2.map(_._3).sum).filter(_ < 0).sum)
              + ("max" -> x._2
                .groupBy(_._2)
                .map(y => y._2.map(_._3).filter(_ >= 0).sum)
                .sum)
              + ("min" -> x._2
                .groupBy(_._2)
                .map(y => y._2.map(_._3).filter(_ < 0).sum)
                .sum)
          )
        }

      val inOutSubCategories = subCategories
        .filter(x => !("total".equals(x) || "min".equals(x) || "max".equals(x)))
        .map(x => List(x + " in", x + " out"))
        .flatten

      val series = Formatter.formatSeries(
        totalFlow,
        startDate,
        endDate,
        inOutSubCategories,
        dateFormat
      )
      // val series = Formatter.formatSeries(totalFlow, startDate, endDate, subCategories, dateFormat)

      Ok(series)
    }
  }

  def totalFlowSubCat(flow: String): Action[AnyContent] = Action.async {
    request =>
      async {
        val dateFormat = Formatter.normalizeDateFormat(
          request.getQueryString("sumRange").getOrElse("")
        )
        val startDate = Date.valueOf(
          request.getQueryString("startDate").getOrElse("1900-01-01")
        )
        val endDate = Date.valueOf(
          request.getQueryString("endDate").getOrElse("2100-12-31")
        )
        val isSharingRatioEnabled = request
          .getQueryString("isSharingRatioEnabled")
          .map(_.toBoolean)
          .getOrElse(true)
        val categories = request
          .getQueryString("categories")
          .getOrElse("")
          .split(",")
          .map(_.trim)
          .sorted
        val subCategories = request
          .getQueryString("subCategories")
          .getOrElse("")
          .split(",")
          .map(_.trim)
          .sorted
        val accounts = request
          .getQueryString("accounts")
          .filter(!_.isEmpty)
          .map(x => x.split(",").map(_.toLong).toSeq)

        val totalFlow = await {
          db.run(
            totalFlowSubCatQuery(
              isSharingRatioEnabled,
              startDate,
              endDate,
              flow,
              categories.head,
              subCategories,
              accounts
            )
          )
        }

        val cols = Json.arr("subCategory", "amount")
        val rows = JsArray(totalFlow.map { x =>
          Json.arr(
            JsString(x._1.getOrElse("")),
            JsNumber(x._2.map(_.abs).getOrElse(BigDecimal(0.0)))
          )
        })

        Ok(Json.obj("data" -> (cols +: rows)))
      }
  }
  def totalFlowSubCatIn(): Action[AnyContent] = totalFlowSubCat("in")
  def totalFlowSubCatOut(): Action[AnyContent] = totalFlowSubCat("out")
}
