package controllers

import java.sql.Date

import helpers.Global
import helpers.Formatter
import models.{Category, JsonFormats, Tables}
import com.github.mauricio.async.db.util.ExecutorServiceUtils.CachedExecutionContext
import javax.inject.Singleton

import org.joda.time.LocalDate
import org.slf4j.{Logger, LoggerFactory}
import play.api.libs.concurrent.Execution.Implicits._
import play.api.mvc._
import play.api.libs.json._

import scala.async.Async.{async, await}
import scala.concurrent.Future
import slick.driver.PostgresDriver.api._

object CategoryController {
  def getCategoriesQuery = {
    Tables.Categories.join(Tables.CategoryMatch).on(_.category === _.category).result
  }

  // the flow can be eithen in or out
  def totalFlowCatQuery(dateFormat: String, flow: String, categories: Array[String]): String = {
    val format = Formatter.normalizeDateFormat(dateFormat)
    val op = flow match { case "in" => ">" case "out" => "<" }
    var cat = "FALSE"
    for (c <- categories) { cat += " OR t_0.category = ?" }
    s"""
    SELECT
      t_0.category AS t_0_category,
      ABS(SUM(t_0.amount)) AS t_0_amount
    FROM transactions t_0
    WHERE
      (t_0.transaction_date BETWEEN ? AND ?)
      AND
      ($cat)
    GROUP BY t_0_category
    HAVING SUM((t_0.amount)) $op 0
    ORDER BY t_0_amount DESC
    """
  }

  def aggregatedCategoryQuery(dateFormat: String, categories: Array[String]): String = {
    val format = Formatter.normalizeDateFormat(dateFormat)
    var cat = "FALSE"
    for (c <- categories) { cat += " OR t_0.category = ?" }
    s"""
    WITH cat AS (
        SELECT
          to_char(t_0.transaction_date,'$format') AS t_0_date,
          t_0.category AS t_0_category, SUM((t_0.amount)) AS t_0_amount
        FROM transactions t_0
        WHERE
          (t_0.transaction_date BETWEEN ? AND ?)
          AND
          ($cat)
        GROUP BY t_0_date, t_0.category
        ORDER BY t_0_date, t_0.category
      ),
      total AS (
        SELECT
          to_char(t_0.transaction_date,'$format') AS t_0_date,
          text('total') AS t_0_category, SUM((t_0.amount)) AS t_0_amount
        FROM transactions t_0
        WHERE
          (t_0.transaction_date BETWEEN ? AND ?)
          AND
          ($cat)
        GROUP BY t_0_date
        ORDER BY t_0_date
      )
    SELECT * FROM cat
    UNION
    SELECT * FROM total
    ORDER BY t_0_date, t_0_category
    """
  }
}

@Singleton
class CategoryController extends Controller {
  import CategoryController._

  private final val logger: Logger = LoggerFactory.getLogger(classOf[CategoryController])

  def readCategories(): Action[AnyContent] = Action.async { async {
    val categories = await {
      Global.db.run(CategoryController.getCategoriesQuery)
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
    val startDate = new LocalDate(request.getQueryString("startDate").getOrElse("1900-01-01"))
    val endDate =   new LocalDate(request.getQueryString("endDate").getOrElse("2100-12-31"))
    val categories = "total" +: request.getQueryString("categories").getOrElse("").split(",").map(_.trim).sorted
    val insertValues = Array(startDate, endDate) ++ categories ++ Array(startDate, endDate) ++ categories
    val query = aggregatedCategoryQuery(dateFormat, categories)
    val queryResult = await { Global.pool.sendPreparedStatement(query, insertValues) }
    val series = Formatter.formatSeries(queryResult.rows.get, startDate, endDate, categories, dateFormat)
    
    Ok( series )
  }}

  def totalFlowCat(flow: String): Action[AnyContent] = Action.async { request => async {
    val dateFormat = Formatter.normalizeDateFormat(request.getQueryString("sumRange").getOrElse(""))
    val startDate = new LocalDate(request.getQueryString("startDate").getOrElse("1900-01-01"))
    val endDate =   new LocalDate(request.getQueryString("endDate").getOrElse("2100-12-31"))
    val categories = "total" +: request.getQueryString("categories").getOrElse("").split(",").map(_.trim).sorted
    val insertValues = Array(startDate, endDate) ++  categories
    val query = totalFlowCatQuery(dateFormat, flow, categories)
    val queryResult = await { Global.pool.sendPreparedStatement(query, insertValues) }

    val cols = Json.arr("category", "amount")
    val rows = JsArray(queryResult.rows.get.map{x =>
      Json.arr(x("t_0_category").asInstanceOf[String], x("t_0_amount").asInstanceOf[BigDecimal])
    })

    Ok( Json.obj("data" -> (cols +: rows)) )
  }}

  def totalFlowCatIn():  Action[AnyContent] = totalFlowCat("in")
  def totalFlowCatOut(): Action[AnyContent] = totalFlowCat("out")
}

