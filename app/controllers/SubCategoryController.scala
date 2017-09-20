package controllers

import java.sql.Date
import java.text.SimpleDateFormat

import helpers.Global
import helpers.Formatter
import models.{Category, JsonFormats, Tables}
import javax.inject.Singleton

import org.slf4j.{Logger, LoggerFactory}
import play.api.libs.concurrent.Execution.Implicits._
import play.api.mvc._
import play.api.libs.json._

import scala.async.Async.{async, await}
import scala.concurrent.Future
import slick.driver.PostgresDriver.api._


object SubCategoryController {
  def getSubCategoryTransactions(startDate: Date, endDate: Date, category: String, subCategories: Array[String]) = {
    Tables.Transactions
      .filter(t => t.transactionDate > startDate && t.transactionDate < endDate
        && subCategories.foldLeft(t.subCategory =!= t.subCategory)((res, sc)=> res || ( (t.category like category) && (t.subCategory like sc) ) )
      )
      .map{x => (x.transactionDate, x.subCategory, x.amount)}
      .result
  }

  // the flow can be either in or out
  def totalFlowSubCatQuery(startDate: Date, endDate: Date, flow: String, category: String, subCategories: Array[String]) = {
    Tables.Transactions
      .filter(t => t.transactionDate > startDate && t.transactionDate < endDate
        && subCategories.foldLeft(t.subCategory =!= t.subCategory)((res, sc)=> res || ( (t.category like category) && (t.subCategory like sc) ) )
      )
      .groupBy(_.subCategory)
      .map(x => (x._1, x._2.map(_.amount).sum))
      .filter(x => flow match { case "in" => x._2 > BigDecimal(0) case "out" => x._2 < BigDecimal(0) } )
      .sortBy(_._1.asc)
      .result
  }

}
@Singleton
class SubCategoryController extends Controller {
  import SubCategoryController._

  private final val logger: Logger = LoggerFactory.getLogger(classOf[SubCategoryController])

  /**
   * Request example:
   */
  def aggregateSubCategory(): Action[AnyContent] = Action.async { request => async {
    val dateFormat = Formatter.normalizeDateFormat(request.getQueryString("sumRange").getOrElse(""))
    val startDate = Date.valueOf(request.getQueryString("startDate").getOrElse("1900-01-01"))
    val endDate =   Date.valueOf(request.getQueryString("endDate").getOrElse("2100-12-31"))
    val categories = request.getQueryString("categories").getOrElse("").split(",").map(_.trim).sorted
    val subCategories = request.getQueryString("subCategories").getOrElse("").split(",").map(_.trim).sorted

    val format = Formatter.normalizeDateFormat(dateFormat)
    val sdf = new SimpleDateFormat(format)

    val raw = await {
      Global.db.run(SubCategoryController.getSubCategoryTransactions(startDate, endDate, categories.head, subCategories))
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

    val series = Formatter.formatSeries(totalFlow, startDate, endDate, subCategories, dateFormat)

    Ok( series )
  }}

  def totalFlowSubCat(flow: String): Action[AnyContent] = Action.async{ request => async {
    val dateFormat = Formatter.normalizeDateFormat(request.getQueryString("sumRange").getOrElse(""))
    val startDate = Date.valueOf(request.getQueryString("startDate").getOrElse("1900-01-01"))
    val endDate =   Date.valueOf(request.getQueryString("endDate").getOrElse("2100-12-31"))
    val categories = request.getQueryString("categories").getOrElse("").split(",").map(_.trim).sorted
    val subCategories = request.getQueryString("subCategories").getOrElse("").split(",").map(_.trim).sorted

    val totalFlow = await {
      Global.db.run(SubCategoryController.totalFlowSubCatQuery(startDate, endDate, flow, categories.head, subCategories))
    }

    val cols = Json.arr("subCategory", "amount")
    val rows = JsArray( totalFlow.map{x =>
      Json.arr(JsString(x._1.getOrElse("")), JsNumber(x._2.map(_.abs).getOrElse(BigDecimal(0.0))))
    })

    Ok( Json.obj("data" -> (cols +: rows)) )
  }}
  def totalFlowSubCatIn():  Action[AnyContent] = totalFlowSubCat("in")
  def totalFlowSubCatOut(): Action[AnyContent] = totalFlowSubCat("out")
}
