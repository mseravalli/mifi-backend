package controllers

import helpers.Formatter
import models.{Category, JsonFormats, Tables}

import java.sql.Date
import java.text.SimpleDateFormat
import javax.inject._

import play.api.db.slick._
import play.api.mvc._
import play.api.libs.json._
import play.api.Logging

import scala.async.Async.{async, await}
import scala.concurrent.{Future, ExecutionContext}
import slick.jdbc.JdbcProfile
import slick.jdbc.PostgresProfile.api._

@Singleton
class CategoryController @Inject() (implicit ec: ExecutionContext,
                                    protected val dbConfigProvider: DatabaseConfigProvider,
                                    cc: ControllerComponents)
    extends AbstractController(cc) with HasDatabaseConfigProvider[JdbcProfile] with Logging {
  def getCategoriesQuery = {
    Tables.Categories
      .join(Tables.CategoryMatch)
      .on(_.category === _.category)
      .result
  }

  // the flow can be either in or out
  def totalFlowCatQuery(isSharingRatioEnabled: Boolean,
                        startDate: Date,
                        endDate: Date,
                        flow: String,
                        categories: Array[String],
                        accounts: Option[Seq[Long]] = None) = {
    val accountsTable = Tables.Accounts.filter( a =>
      accounts.map(_.foldLeft(a.id =!= a.id)((res, x) => res || (a.id === x)))
        .getOrElse(a.id === a.id)
    )

    Tables.Transactions
      .filter(t => t.transactionDate > startDate && t.transactionDate < endDate
        && categories.foldLeft(t.category =!= t.category)((res,c)=> res || (t.category like c) )
      )
      .join(accountsTable).on(_.accountId === _.id)
      .groupBy(_._1.category)
      .map{x => (
        x._1,
        x._2.map{ y =>
          if (isSharingRatioEnabled)
          y._2.sharingRatio * y._1.amount
        else
          y._1.amount
        }.sum
      )}
      .filter(x => flow match { case "in" => x._2 > BigDecimal(0) case "out" => x._2 < BigDecimal(0) } )
      .sortBy(_._1.asc)
      .result
  }

  def getCategoryTransactions(isSharingRatioEnabled: Boolean,
                              startDate: Date,
                              endDate: Date,
                              categories: Array[String],
                              accounts: Option[Seq[Long]] = None) = {
    val accountsTable = Tables.Accounts.filter( a =>
      accounts.map(_.foldLeft(a.id =!= a.id)((res, x) => res || (a.id === x)))
        .getOrElse(a.id === a.id)
    )

    Tables.Transactions
      .filter(t => t.transactionDate > startDate && t.transactionDate < endDate
        && categories.foldLeft(t.category =!= t.category)((res,c)=> res || (t.category like c) )
      )
      .join(accountsTable).on(_.accountId === _.id)
      .map{x => (
        x._1.transactionDate,
        x._1.category,
        if (isSharingRatioEnabled)
          x._2.sharingRatio * x._1.amount
        else
          x._1.amount
      )}
      .result
  }

  def readCategories(): Action[AnyContent] = Action.async { async {
    val categories = await {
      db.run(getCategoriesQuery)
    }.map{x =>
      Category (
        name = x._1.category,
        color = x._1.color.getOrElse("#000000"),
        subCategories = List(Category(x._2.subCategory, x._2.color.getOrElse("#000000")))
      )
    }
    val nestedCategories = categories.groupBy{x => (x.name, x.color)}
      .map{x => Category( x._1._1, x._1._2, x._2.map{y => y.subCategories}.flatten.toList)}
    val res = nestedCategories.map{y => Json.toJson(y)(JsonFormats.categoryFmt) }
    Ok( Json.obj("categories" -> res) )
  }}

  /**
   * Request example:
   *  /categories?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2016-03-31&categories=house,other,finance,mobility,living,health
   */
  def aggregateCategory(): Action[AnyContent] = Action.async { request => async {
    val dateFormat = Formatter.normalizeDateFormat(request.getQueryString("sumRange").getOrElse(""))
    val startDate = Date.valueOf(request.getQueryString("startDate").getOrElse("1900-01-01"))
    val endDate =   Date.valueOf(request.getQueryString("endDate").getOrElse("2100-12-31"))
    val isSharingRatioEnabled = request.getQueryString("isSharingRatioEnabled").map(_.toBoolean).getOrElse(true)
    val categories = "total" +: request.getQueryString("categories").getOrElse("").split(",").map(_.trim).sorted
    val accounts = request.getQueryString("accounts").filter(! _.isEmpty).map(x => x.split(",").map(_.toLong).toSeq)

    val format = Formatter.normalizeDateFormat(dateFormat)
    val sdf = new SimpleDateFormat(format)

    val raw = await {
      db.run(getCategoryTransactions(isSharingRatioEnabled, startDate, endDate, categories, accounts))
    }

    val totalFlow = raw
      .map(x => (sdf.format(x._1.getOrElse("")), x._2.getOrElse(""), x._3.getOrElse(BigDecimal(0.0))))
      // from now on operating with (date, category, amount)
      .groupBy(x => x._1) // group by date
      .map{ x =>
        (
          x._1,
          x._2.groupBy(_._2).map(y => (y._1 + " in" -> y._2.map(_._3).filter(_ >= 0).sum)) // group by category in
              ++ x._2.groupBy(_._2).map(y => (y._1 + " out" -> y._2.map(_._3).filter(_ < 0).sum)) // group by category out
            + ("total" -> x._2.map(_._3).sum)
            + ("max" -> x._2.groupBy(_._2).map(y => y._2.map(_._3).filter(_ >= 0).sum).sum)
            + ("min" -> x._2.groupBy(_._2).map(y => y._2.map(_._3).filter(_ < 0).sum).sum)
        )
      }

    logger.debug(totalFlow.toString)

    val inOutCategories = categories
      .filter(x => !("total".equals(x) || "min".equals(x) || "max".equals(x)))
      .map(x =>  List(x + " in", x + " out")).flatten

    val series = Formatter.formatSeries(totalFlow, startDate, endDate, inOutCategories, dateFormat)

    Ok( series )
  }}

  def totalFlowCat(flow: String): Action[AnyContent] = Action.async { request => async {
    val dateFormat = Formatter.normalizeDateFormat(request.getQueryString("sumRange").getOrElse(""))
    val startDate = Date.valueOf(request.getQueryString("startDate").getOrElse("1900-01-01"))
    val endDate =   Date.valueOf(request.getQueryString("endDate").getOrElse("2100-12-31"))
    val isSharingRatioEnabled = request.getQueryString("isSharingRatioEnabled").map(_.toBoolean).getOrElse(true)
    val categories = "total" +: request.getQueryString("categories").getOrElse("").split(",").map(_.trim).sorted
    val accounts = request.getQueryString("accounts").filter(! _.isEmpty).map(x => x.split(",").map(_.toLong).toSeq)

    val totalFlow = await {
      db.run(totalFlowCatQuery(isSharingRatioEnabled, startDate, endDate, flow, categories, accounts))
    }

    val cols = Json.arr("category", "amount")
    val rows = JsArray( totalFlow.map{x =>
      Json.arr(JsString(x._1.getOrElse("")), JsNumber(x._2.map(_.abs).getOrElse(BigDecimal(0.0))))
    })

    Ok( Json.obj("data" -> (cols +: rows)) )
  }}

  /*
   * Request example
   * http://localhost:9000/api/v0.1/categories/in?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2016-03-31&categories=house,other,finance,mobility,living,health,free%20time,work%20and%20training&subCategories=
   */
  def totalFlowCatIn():  Action[AnyContent] = totalFlowCat("in")
  def totalFlowCatOut(): Action[AnyContent] = totalFlowCat("out")
}

