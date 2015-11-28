package controllers

import helpers.{Formatter, Global}

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

object TransactionController {
  val getTransactionsQuery = s"""
    SELECT t_0.*
    FROM transactions t_0
    WHERE
      (t_0.transaction_date BETWEEN ? AND ?)
  """

  val getTransactionQuery = s"""
    SELECT *
    FROM transactions
    WHERE id = ?
  """

  val updateAmountQuery = s"""
    UPDATE transactions
    SET amount = ?
    WHERE id = ?
  """

  val insertTransactionQuery = s"""
    INSERT INTO transactions ("account_number",
      "transaction_date",
      "exchange_date",
      "receiver",
      "purpose",
      "amount",
      "currency",
      "category",
      "sub_category",
      "approved",
      "comment")
    VALUES (?,?,?,?,?,?,?,?,?,?,?)
    RETURNING id
  """
}

@Singleton
class TransactionController extends Controller{
  import models.JsonFormats

  /**
   * Splits a transaction in a left and a right part
   * Only the amount and the description for the r part are mandatory
   * The description for the left part is optional and the amount is computed
   * example:
     {
       "id": 4238,
       "rAmount": -55,
       "rCategory": "free time",
       "rSubCategory": "going out",
       "rComment": "comment"
     }
   * @return
   */
  def splitTransaction(): Action[JsValue] =  Action.async(parse.json){ request => async {
    val jsonRequest = request.body
    val lId = (jsonRequest \ "id").as[BigDecimal]
    val rAmount:BigDecimal = (jsonRequest \ "rAmount").as[BigDecimal]
    val rCategory = (jsonRequest \ "rCategory").as[String]
    val rSubCategory = (jsonRequest \ "rSubCategory").as[String]
    val rComment = (jsonRequest \ "rComment").as[String]

    await { Global.pool.inTransaction{ c =>
      c.sendPreparedStatement(TransactionController.getTransactionQuery, Array(lId)).flatMap{ res =>
        val account_number   = res.rows.head.map(r => r("account_number")).head.asInstanceOf[String]
        val transaction_date = res.rows.head.map(r => r("transaction_date")).head.asInstanceOf[LocalDate]
        val exchange_date    = res.rows.head.map(r => r("exchange_date")).head.asInstanceOf[LocalDate]
        val receiver         = res.rows.head.map(r => r("receiver")).head.asInstanceOf[String]
        val purpose          = res.rows.head.map(r => r("purpose")).head.asInstanceOf[String]
        val amount           = res.rows.head.map(r => r("amount")).head.asInstanceOf[BigDecimal]
        val currency         = res.rows.head.map(r => r("currency")).head.asInstanceOf[String]
        val approved         = res.rows.head.map(r => r("approved")).head.asInstanceOf[Boolean]

        if (rAmount.abs > amount.abs || rAmount * amount <= 0) {
          Future(BadRequest(Json.obj("msg" -> JsString("Wrong amount passed"))))
        }
        else {
          val lAmount = amount - rAmount
          val updateValues = Array(lAmount, lId)
          c.sendPreparedStatement(TransactionController.updateAmountQuery, updateValues).flatMap { res =>
            val insertValues = Array(account_number,
              transaction_date,
              exchange_date,
              receiver,
              purpose,
              rAmount,
              currency,
              rCategory,
              rSubCategory,
              approved,
              rComment
            )
            c.sendPreparedStatement(TransactionController.insertTransactionQuery, insertValues).flatMap{ r =>
              r.rows match {
                case Some(rows) => Future(Ok(Json.obj("msg" -> "Split completed correctly", "transactions" ->  Json.arr(lId.toString, rows.head.apply(0).toString) )))
                case None => Future(InternalServerError(Json.obj("msg" -> "No Id was returned")))
              }
            }
          }
        }
      }
    }}
  }}

  /**
   * Request example:
      {
        "startDate": "2015-01-01",
        "endDate": "2015-01-31"
      }
   */
  def readTransactions(): Action[JsValue] = Action.async(parse.json) { request => async {
    val jsonRequest = request.body
    val startDate = new LocalDate((jsonRequest \ "startDate").as[String])
    val endDate =   new LocalDate((jsonRequest \ "endDate").as[String])
//    val startDate = request.getQueryString("startDate").getOrElse("1900-01-01")
//    val endDate = request.getQueryString("endDate").getOrElse("2100-12-31")

    val insertValues = Array(startDate, endDate)
    val queryResult = await { Global.pool.sendPreparedStatement(TransactionController.getTransactionsQuery, insertValues)}

    val transactions = queryResult.rows.map { rows => rows.map{ r =>
      new Transaction(
        account_number =   r("account_number").asInstanceOf[String],
        transaction_date = r("transaction_date").asInstanceOf[LocalDate],
        exchange_date =    r("exchange_date").asInstanceOf[LocalDate],
        receiver =         r("receiver").asInstanceOf[String],
        purpose =          r("purpose").asInstanceOf[String],
        amount =           r("amount").asInstanceOf[BigDecimal],
        currency =         r("currency").asInstanceOf[String],
        approved =         r("approved").asInstanceOf[Boolean]
      )
    }}

    val tmp = transactions.map{x => x.map{ y => Json.toJson(y)(JsonFormats.transactionFmt) }}
    Ok(Json.obj("transactions" ->  tmp))
  }}

}