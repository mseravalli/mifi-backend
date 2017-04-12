package controllers

import helpers.Global
import helpers.Formatter
import models.{JsonFormats, Category}

import com.github.mauricio.async.db.util.ExecutorServiceUtils.CachedExecutionContext
import javax.inject.Singleton
import org.joda.time.{LocalDate}
import org.slf4j.{LoggerFactory, Logger}
import play.api.mvc._
import play.api.libs.json._
import scala.async.Async.{async, await}
import scala.concurrent.Future

object CategoryController {
  val getCategoriesQuery = """
    select c.category AS cat, c.color AS cat_col, cm.sub_category AS sub_cat, cm.color AS sub_cat_col
    from categories c JOIN category_match cm on c.category = cm.category
  """

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
    val queryResult = await { Global.pool.sendPreparedStatement(getCategoriesQuery) }
    val categories = queryResult.rows.map { rows => rows.map{ r =>
      Category (
        name = r("cat").asInstanceOf[String],
        color = r("cat_col").asInstanceOf[String],
        subCategories = List(Category(r("sub_cat").toString, r("sub_cat_col").toString))
      )
    }}
    val nestedCategories = categories.map{ c => c.groupBy{x => (x.name, x.color)}
      .map{x => Category( x._1._1, x._1._2, x._2.map{y => y.subCategories}.flatten.toList)}}
    val res = nestedCategories.map{x => x.map{ y => Json.toJson(y)(JsonFormats.categoryFmt) }}
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
    // val categories = "total" +: (jsonRequest \ "categories").as[Array[String]].sorted
    val insertValues = Array(startDate, endDate) ++ categories ++ Array(startDate, endDate) ++ categories
    val query = aggregatedCategoryQuery(dateFormat, categories)
    val queryResult = await { Global.pool.sendPreparedStatement(query, insertValues) }
    val series = Formatter.formatSeries(queryResult.rows.get, startDate, endDate, categories, dateFormat)
    
    Ok( series )
  }}

  def totalFlowCat(flow: String): Action[JsValue] = Action.async(parse.json){ request => async {
    val jsonRequest = request.body
    val dateFormat = Formatter.normalizeDateFormat((jsonRequest \ "sumRange").as[String])
    val startDate = new LocalDate((jsonRequest \ "startDate").as[String])
    val endDate =   new LocalDate((jsonRequest \ "endDate").as[String])
    val categories = (jsonRequest \ "categories").as[Array[String]]
    val insertValues = Array(startDate, endDate) ++  categories
    val query = totalFlowCatQuery(dateFormat, flow, categories)
    val queryResult = await { Global.pool.sendPreparedStatement(query, insertValues) }

    val cols = Json.arr("category", "amount")
    val rows = JsArray(queryResult.rows.get.map{x =>
      Json.arr(x("t_0_category").asInstanceOf[String], x("t_0_amount").asInstanceOf[BigDecimal])
    })

    Ok( Json.obj("data" -> (cols +: rows)) )
  }}

  def totalFlowCatIn(): Action[JsValue] =  totalFlowCat("in")
  def totalFlowCatOut(): Action[JsValue] = totalFlowCat("out")
}

