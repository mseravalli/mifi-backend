package controllers

import models._
import helpers._
import com.github.tototoshi.csv._
import java.sql.Date
import java.sql.Timestamp
import javax.inject._

import org.joda.time.format.{DateTimeFormat, DateTimeFormatter}
import play.api.db.slick._
import play.api.mvc._
import play.api.mvc.MultipartFormData.FilePart
import play.api.libs.Files.TemporaryFile
import play.api.libs.json._
import play.api.libs.ws._

import scala.async.Async.{async, await}
import scala.concurrent.{Future, ExecutionContext}
import scala.util.{Failure, Success, Try}
import slick.jdbc.JdbcProfile
import slick.jdbc.PostgresProfile.api._

@Singleton
class ClassifierContoller @Inject() (implicit ec: ExecutionContext,
                                   protected val dbConfigProvider: DatabaseConfigProvider,
                                   cc: ControllerComponents)
  extends AbstractController(cc) with HasDatabaseConfigProvider[JdbcProfile] {

  /**
    * Returns for the provided fields the categories associated otherwise "other" "to categorize"
    * @return
    */
  def classify(): Action[AnyContent] =  Action.async { request => async {
    val classes: Map[String, Tuple2[String, String]] = await {
      db.run(Tables.TransactionsClassification.result)
    }.map(x => x.description -> (x.category, x.subCategory)).toMap

    val transacions = await {
      db.run(Tables.Transactions
        .filter(t => t.category === "other" && t.subCategory === "to categorize")
        .result)
    }

    val classifiedTransactions = transacions.map{ t =>
      val classification: Tuple2[String, String] = classes.find{ c =>
        val fields = List(t.purpose, t.receiver)
        fields.map{o =>
          o.map{ x => x.toLowerCase.contains(c._1.toLowerCase)}.getOrElse(false)
        }.reduce(_ || _)
      }.map(_._2).getOrElse(("other", "to categorize"))
      (t.id -> classification)
    }

    val updateTransactionQueries = classifiedTransactions.map {ct =>
      Tables.Transactions.filter(_.id === ct._1)
        .map(t => (t.category, t.subCategory))
        .update(Some(ct._2._1), Some(ct._2._2))
    }

    val res = await { Future.sequence(updateTransactionQueries.map { q => db.run(q) }) }

    Ok(Json.obj("total" -> JsNumber(res.size), "successful" -> JsNumber(res.sum)))
  }}
}

