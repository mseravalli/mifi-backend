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
import play.api.Logging

import scala.async.Async.{async, await}
import scala.concurrent.{Future, ExecutionContext}
import scala.util.matching.Regex
import scala.util.{Failure, Success, Try}
import slick.jdbc.JdbcProfile
import slick.jdbc.PostgresProfile.api._

@Singleton
class ClassifierController @Inject() (implicit ec: ExecutionContext,
                                   protected val dbConfigProvider: DatabaseConfigProvider,
                                   cc: ControllerComponents)
  extends AbstractController(cc) with HasDatabaseConfigProvider[JdbcProfile] with Logging {

  /**
    * Returns for the provided fields the categories associated otherwise "other" "to categorize"
    * @return
    */
  def classifyTransactions(): Action[AnyContent] =  Action.async { request => async {
    val res: Seq[Int] = await{classify}

    Ok(Json.obj("total" -> JsNumber(res.size), "successful" -> JsNumber(res.sum)))
  }}

  def classify: Future[Seq[Int]] = async {

    val taggedClasses: Map[Tuple3[String, String, String], List[String]] = await {
      db.run(
        sql"""
        select trc.*, tac.tag
        from transactions_classification trc natural left join tagged_classification tac
        """.as[(String,String,String,String)]
      )
    }.toList
    .groupBy(x => (x._1, x._2, x._3))
    .mapValues(_.map(_._4))

    logger.debug(s"taggedClasses ${taggedClasses.toString}")

    val uncategorizedTransactions = await {
      db.run(Tables.Transactions
        .filter(t => t.category === "other" && t.subCategory === "to categorize")
        .result)
    }

    // takes only the first match
    val classifiedTransactions: Seq[(Long, (String, String, Seq[String]))] = uncategorizedTransactions.map { t => {
      // TODO: this maybe should be a map to solve issues with multiple equal matches.
      val classifications: Seq[(String, String, Seq[String])] = taggedClasses.map { c => {
        val description = c._1._1
        val category = c._1._2
        val subCategory = c._1._3
        val tags = c._2
        val numberPattern: Regex = ("(?i)(" + description + ")").r
        val fields = t.receiver.getOrElse("") + " " + t.purpose.getOrElse("")
        numberPattern.findFirstMatchIn(fields) match {
          case Some(_) => Some((category, subCategory, tags))
          case None => None
        }
      }}
      .toList.flatten

      // TODO: let this warning bubble up to the end user
      if (classifications.size > 1) {
        logger.warn(s"Found multiple matches for transacion ${t.id}: ${classifications.toString}")
      }

      classifications match {
        case x :: xs => Some((t.id -> x))
        case Nil => None
      }
    }}.flatten

    logger.debug(s"classifiedTransactions: ${classifiedTransactions.toString}")

    val updateTransactionQueries = classifiedTransactions.map { ct =>
      val transactionId = ct._1
      val category = ct._2._1
      val subCategory = ct._2._2
      val tags = ct._2._3

      logger.debug(s"tags ${tags}")

      var query: List[slick.sql.SqlStreamingAction[Vector[Int],Int,slick.dbio.Effect]] = List(
        sql"""
          UPDATE transactions SET category = ${category}, sub_category = ${subCategory}
          WHERE id = ${transactionId};
        """.as[Int]
      )

      if (tags.size > 0) {
        query = query ++ tags.filter(null != _).map(t =>
          sql"""
            INSERT INTO tagged_transactions (transaction_id, tag) VALUES   
              (${transactionId}, ${t})
            ON CONFLICT (transaction_id, tag) DO UPDATE SET tag = ${t};
          """.as[Int]
        )
      }
      
      query
    }.flatten

    logger.debug(updateTransactionQueries.map(_.statements).toString);

    val res = await {
      Future.sequence(updateTransactionQueries.map {q => db.run(q.transactionally)})
    }
    res.flatten
  }
}

