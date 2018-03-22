package controllers

import java.sql.Date

import helpers.{Formatter, Global}

import models._

import javax.inject._
import play.api.mvc._
import play.api.libs.json._
import play.api.mvc.PlayBodyParsers
import scala.async.Async.{async, await}
import scala.concurrent.ExecutionContext
import slick.jdbc.PostgresProfile.api._

@Singleton
class TransactionController @Inject()(implicit ec: ExecutionContext, pbp:PlayBodyParsers)
    extends Controller {
  def readTransactionsQuery(startDate: Date,
                            endDate: Date,
                            categories: Array[String],
                            subCategories: Array[String],
                            accounts: Option[Seq[String]] = None) = {
    val accountsTable = Tables.Accounts.filter( a =>
      accounts.getOrElse(List("%")).foldLeft(a.account =!= a.account)((res, x) => res || (a.account like x))
    )
    Tables.Transactions
      .filter(t => t.transactionDate > startDate && t.transactionDate < endDate
        && categories.foldLeft(t.category =!= t.category)((res,c)=> res || (t.category like c) )
        && subCategories.foldLeft(t.subCategory =!= t.subCategory)((res,s)=> res || (t.subCategory like s) )
      )
      .join(accountsTable).on(_.accountNumber === _.account)
      .map(x => x._1)
      .result
  }

  def updateTransactionQuery(id: Long, category: String, subCategory: String, comment: String) = {
    Tables.Transactions.filter(t => t.id === id)
      .map(x => (x.category, x.subCategory, x.comment ))
      .update(Some(category), Some(subCategory), Some(comment))
  }

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
    val accounts = request.getQueryString("accounts").map(x => x.split(",").toSeq)

    val res: Seq[TransactionsRow] = await {
      Global.db.run(readTransactionsQuery(startDate, endDate, categories, subCategories, accounts))
    }

    Ok(Json.obj("transactions" -> res.map(x => Json.toJson(x)(JsonFormats.transactionFmt))) )
  }}

  def updateTransaction(id: String): Action[JsValue] = Action.async(pbp.json){ request => async {
    val jsonRequest = request.body
    val category =    (jsonRequest \ "category").as[String]
    val subCategory = (jsonRequest \ "subCategory").as[String]
    val comment =     (jsonRequest \ "comment").as[String]

    val res = await { Global.db.run(updateTransactionQuery(id.toLong, category, subCategory, comment)) }

    Ok(Json.obj("result" -> JsString(res.toString)))
  }}
}
