package controllers

import helpers.Global
import helpers.Formatter
import models.{Category, JsonFormats, Tables}

import java.sql.Date
import java.text.SimpleDateFormat
import javax.inject._
import org.slf4j.{Logger, LoggerFactory}
import play.api.mvc._
import play.api.libs.json._

import scala.async.Async.{async, await}
import scala.concurrent.{Future, ExecutionContext}
import slick.jdbc.PostgresProfile.api._

@Singleton
class CategoryController @Inject() (implicit ec: ExecutionContext, cc: ControllerComponents)
    extends AbstractController(cc) {
  def getCategoriesQuery = {
    Tables.Categories
      .join(Tables.CategoryMatch)
      .on(_.category === _.category)
      .result
  }

  // the flow can be either in or out
  def totalFlowCatQuery(startDate: Date,
                        endDate: Date,
                        flow: String,
                        categories: Array[String],
                        accounts: Option[Seq[String]] = None) = {
    val accountsTable = Tables.Accounts.filter( a =>
      accounts.getOrElse(List("%")).foldLeft(a.account =!= a.account)((res, x) => res || (a.account like x))
    )

    Tables.Transactions
      .filter(t => t.transactionDate > startDate && t.transactionDate < endDate
        && categories.foldLeft(t.category =!= t.category)((res,c)=> res || (t.category like c) )
      )
      .join(accountsTable).on(_.accountNumber === _.account)
      .groupBy(_._1.category)
      .map(x => (x._1, x._2.map(_._1.amount).sum))
      .filter(x => flow match { case "in" => x._2 > BigDecimal(0) case "out" => x._2 < BigDecimal(0) } )
      .sortBy(_._1.asc)
      .result
  }

  def getCategoryTransactions(startDate: Date,
                              endDate: Date,
                              categories: Array[String],
                              accounts: Option[Seq[String]] = None) = {
    val accountsTable = Tables.Accounts.filter( a =>
      accounts.getOrElse(List("%")).foldLeft(a.account =!= a.account)((res, x) => res || (a.account like x))
    )

    Tables.Transactions
      .filter(t => t.transactionDate > startDate && t.transactionDate < endDate
        && categories.foldLeft(t.category =!= t.category)((res,c)=> res || (t.category like c) )
      )
      .join(accountsTable).on(_.accountNumber === _.account)
      .map{x => (x._1.transactionDate, x._1.category, x._1.amount)}
      .result
  }

  private final val logger: Logger = LoggerFactory.getLogger(classOf[CategoryController])

  def readCategories(): Action[AnyContent] = Action.async { async {
    val categories = await {
      Global.db.run(getCategoriesQuery)
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
    val categories = "total" +: request.getQueryString("categories").getOrElse("").split(",").map(_.trim).sorted
    val accounts = request.getQueryString("accounts").map(x => x.split(",").toSeq)

    val format = Formatter.normalizeDateFormat(dateFormat)
    val sdf = new SimpleDateFormat(format)

    val raw = await {
      Global.db.run(getCategoryTransactions(startDate, endDate, categories, accounts))
    }

    val totalFlow = raw
      .map(x => (sdf.format(x._1.getOrElse("")), x._2.getOrElse(""), x._3.getOrElse(BigDecimal(0.0))))
      .groupBy(x => x._1)
      .map{ x =>
        (
          x._1,
          x._2.groupBy(_._2).map(y => (y._1 -> y._2.map(_._3).sum))
            + ("total" -> x._2.map(_._3).sum)
            + ("max" -> x._2.groupBy(_._2).map(y => y._2.map(_._3).sum).filter(_ > 0).sum)
            + ("min" -> x._2.groupBy(_._2).map(y => y._2.map(_._3).sum).filter(_ < 0).sum)
        )
      }

    val series = Formatter.formatSeries(totalFlow, startDate, endDate, categories, dateFormat)

    Ok( series )
  }}

  def totalFlowCat(flow: String): Action[AnyContent] = Action.async { request => async {
    val dateFormat = Formatter.normalizeDateFormat(request.getQueryString("sumRange").getOrElse(""))
    val startDate = Date.valueOf(request.getQueryString("startDate").getOrElse("1900-01-01"))
    val endDate =   Date.valueOf(request.getQueryString("endDate").getOrElse("2100-12-31"))
    val categories = "total" +: request.getQueryString("categories").getOrElse("").split(",").map(_.trim).sorted
    val accounts = request.getQueryString("accounts").map(x => x.split(",").toSeq)

    val totalFlow = await {
      Global.db.run(totalFlowCatQuery(startDate, endDate, flow, categories, accounts))
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

