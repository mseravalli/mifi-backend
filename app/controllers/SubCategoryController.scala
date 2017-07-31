package controllers

import java.sql.Date

import helpers.Global
import helpers.Formatter
import com.github.mauricio.async.db.util.ExecutorServiceUtils.CachedExecutionContext
import javax.inject.Singleton

import org.joda.time.LocalDate
import org.slf4j.{Logger, LoggerFactory}
import play.api.mvc._
import play.api.libs.json._

import scala.async.Async.{async, await}
import scala.concurrent.Future


object SubCategoryController {
  val getSubCategoriesQuery = """
    SELECT sub_category, color
    FROM category_match
    WHERE category = ?
    ORDER BY sub_category
                              """
  def getSubCategories(categories: Seq[String]): Future[Map[String,String]] = { async {
    val queryResult = await { Global.pool.sendPreparedStatement(getSubCategoriesQuery, categories) }
    val res = queryResult.rows.map { rows => rows.map{ r =>
      (r("sub_category").asInstanceOf[String] -> r("color").asInstanceOf[String])
    }.toMap}
    res.getOrElse(Map[String,String]())
  }}

  // the flow can be eithen in or out
  def totalFlowSubCatQuery(dateFormat: String, flow:String, subCategories: Array[String]): String = {
    val op = flow match { case "in" => ">" case "out" => "<" }
    val format = Formatter.normalizeDateFormat(dateFormat)
    var subCat = "FALSE"
    for (c <- subCategories) { subCat += " OR t_0.sub_category = ?" }
    s"""
    SELECT
      t_0.sub_category AS t_0_sub_category,
      ABS(SUM(t_0.amount)) AS t_0_amount
    FROM transactions t_0
    WHERE
      (t_0.transaction_date BETWEEN ? AND ?)
      AND
      (t_0.category = ?)
      AND
      ($subCat)
    GROUP BY t_0_sub_category
    HAVING SUM((t_0.amount)) $op 0
    ORDER BY t_0_amount DESC
    """
  }

  def aggregateSubCategoryQuery(dateFormat: String,
                                 categories: Array[String],
                                 subCategories: Array[String]): String = {
    val format = Formatter.normalizeDateFormat(dateFormat)
    var cat = "FALSE"
    for (c <- categories) { cat += " OR t_0.category = ?" }
    var subCat = "FALSE"
    for (c <- subCategories) { subCat += " OR t_0.sub_category = ?" }
    s"""
    WITH cat AS (
        SELECT
          to_char(t_0.transaction_date,'$format') AS t_0_date,
          t_0.category AS t_0_super_category,
          t_0.sub_category AS t_0_category,
          SUM((t_0.amount)) AS t_0_amount
        FROM transactions t_0
        WHERE
          (t_0.transaction_date BETWEEN ? AND ?)
          AND
          ($cat)
          AND
          ($subCat)
        GROUP BY t_0_date, t_0.category, t_0.sub_category
        ORDER BY t_0_date, t_0.category, t_0.sub_category
      ),
      total AS (
        SELECT
          to_char(t_0.transaction_date,'$format') AS t_0_date,
          text('total') AS t_0_super_category,
          text('total') AS t_0_category,
          SUM((t_0.amount)) AS t_0_amount
        FROM transactions t_0
        WHERE
          (t_0.transaction_date BETWEEN ? AND ?)
          AND
          ($cat)
          AND
          ($subCat)
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
class SubCategoryController extends Controller {
  import SubCategoryController._

  private final val logger: Logger = LoggerFactory.getLogger(classOf[SubCategoryController])

   def readSubCategories(): Action[JsValue] = Action.async(parse.json){ request => async {
     val jsonRequest = request.body
     val categories = (jsonRequest \ "categories").as[Array[String]]
     val subCategories = await {getSubCategories(categories)}
     var res: JsObject = Json.obj()
     for (s <- subCategories) {
      res = res + (s._1 -> JsString(s._2))
     }
     Ok( Json.obj("subCategories" -> res) )
   }}

  /**
   * Request example:
   *  {
   *    "sumRange": "YYYY-MM-DD",
   *    "startDate": "2015-01-01",
   *    "endDate": "2015-01-31",
   *    "categories": ["living", "free time"],
   *    "subCategories": ["sport"]
   *  }
   */
  def aggregateSubCategory(): Action[JsValue] = Action.async(parse.json){ request => async {
    val jsonRequest = request.body
    val dateFormat = Formatter.normalizeDateFormat((jsonRequest \ "sumRange").as[String])
    val startDate = new LocalDate((jsonRequest \ "startDate").as[String])
    val endDate =   new LocalDate((jsonRequest \ "endDate").as[String])
    val categories = "total" +: (jsonRequest \ "categories").as[Array[String]].sorted
    val subCategories = "total" +: (jsonRequest \ "subCategories").as[Array[String]].sorted
    val insertValues = Array(startDate, endDate) ++ categories ++ subCategories ++
      Array(startDate, endDate) ++ categories ++ subCategories
    val query = aggregateSubCategoryQuery(dateFormat, categories,subCategories)
    val queryResult = await { Global.pool.sendPreparedStatement(query, insertValues) }
    val series = Formatter.formatSeries(queryResult.rows.get, startDate, endDate, subCategories, dateFormat)

    Ok( series )
  }}

  def totalFlowSubCat(flow: String): Action[JsValue] = Action.async(parse.json){ request => async {
    val jsonRequest = request.body
    val dateFormat = Formatter.normalizeDateFormat((jsonRequest \ "sumRange").as[String])
    val startDate = new LocalDate((jsonRequest \ "startDate").as[String])
    val endDate =   new LocalDate((jsonRequest \ "endDate").as[String])
    val categories = (jsonRequest \ "categories").as[Array[String]]
    val subCategories = (jsonRequest \ "subCategories").as[Array[String]]
    val cols = Json.arr("subCategory", "amount")
    val result = categories.length match {
      case 1 => {
        val insertValues = Array(startDate, endDate) ++ categories ++  subCategories
        val query = totalFlowSubCatQuery(dateFormat, flow, subCategories)
        val queryResult = await { Global.pool.sendPreparedStatement(query, insertValues) }

        val rows = JsArray(queryResult.rows.get.map{x =>
          Json.arr(x("t_0_sub_category").asInstanceOf[String], x("t_0_amount").asInstanceOf[BigDecimal])
        })
        (cols +: rows)
      }
      case _ => Json.arr(cols)
    }

    Ok( Json.obj("data" -> result) )
  }}
  def totalFlowSubCatIn(): Action[JsValue] =  totalFlowSubCat("in")
  def totalFlowSubCatOut(): Action[JsValue] = totalFlowSubCat("out")
}
