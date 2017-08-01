package controllers

import java.sql.Date

import helpers.{Formatter, Global}

import models._

import com.github.mauricio.async.db.util.ExecutorServiceUtils.CachedExecutionContext
import com.github.tototoshi.csv._
import javax.inject.Singleton
import models.{Transaction, Account}
import org.joda.time.{LocalDate}
import org.joda.time.format.DateTimeFormat
import org.slf4j.{LoggerFactory, Logger}
import play.api.mvc._
import play.api.mvc.MultipartFormData.FilePart
import play.api.libs.Files.TemporaryFile
import play.api.libs.json._
import scala.async.Async.{async, await}
import scala.util.Failure
import scala.concurrent.Future
import slick.driver.PostgresDriver.api._

object TransactionController {

  def readTransactionsQuery(startDate: Date, endDate: Date, categories: Array[String], subCategories: Array[String]) = {
    Tables.Transactions
      .filter(t => t.transactionDate > startDate && t.transactionDate < endDate
        && categories.foldLeft(t.category =!= t.category)((res,c)=> res || (t.category like c) )
        && subCategories.foldLeft(t.subCategory =!= t.subCategory)((res,s)=> res || (t.subCategory like s) )
      )
      .result
  }

  def readTransactionQuery2(id: Long) = Tables.Transactions.filter(t => t.id === id).result

  def updateTransactionQuery(id: Long, category: String, subCategory: String) = {
    Tables.Transactions.filter(t => t.id === id)
      .map(x => (x.category, x.subCategory ))
      .update(Some(category), Some(subCategory))
  }
}

@Singleton
class TransactionController extends Controller{
  import models.JsonFormats

  def readTransactions(): Action[AnyContent] = Action.async { request => async {
    val startDate = Date.valueOf(request.getQueryString("startDate").getOrElse("1900-01-01"))
    val endDate = Date.valueOf(request.getQueryString("endDate") .getOrElse("2100-12-31"))
    val categories: Array[String] = request.getQueryString("categories")
      .map(x => x.split(","))
      .getOrElse(new Array[String](0))
    val subCategories: Array[String] = request.getQueryString("subCategories")
      .map(x => x.split(","))
      .getOrElse(Array[String]("%"))
      .map{x => x match {case "" => "%"; case x => x}}

    val res: Seq[Tables.TransactionsRow] = await {
      Global.db.run(TransactionController.readTransactionsQuery(startDate, endDate, categories, subCategories))
    }

    Ok(Json.obj("transactions" -> res.map(x => Json.toJson(x)(JsonFormats.transactionFmt))) )
  }}

  def updateTransaction(id: String): Action[JsValue] = Action.async(parse.json){ request => async {
    val jsonRequest = request.body
    val category = (jsonRequest \ "category").as[String]
    val subCategory =   (jsonRequest \ "subCategory").as[String]

    val res = await { Global.db.run(TransactionController.updateTransactionQuery(id.toLong, category, subCategory)) }

    Ok(Json.obj("result" -> JsString(res.toString)))
  }}
}
