package helpers

import com.github.mauricio.async.db.postgresql.PostgreSQLConnection
import com.github.mauricio.async.db.postgresql.util.URLParser
import com.github.mauricio.async.db.util.ExecutorServiceUtils.CachedExecutionContext
import com.github.mauricio.async.db.{RowData, QueryResult, Connection}
import com.github.mauricio.async.db.ResultSet
import javax.inject.Singleton
import org.joda.time.{LocalDate, Days, Months, Years}
import org.slf4j.{LoggerFactory, Logger}
import play.api._
import play.api.mvc._
import play.api.libs.json._
import scala.async.Async.{async, await}
import scala.concurrent.Future

object Formatter {
  /**
   * Ensures that only valid date formats are used to avoid SQL injection.
   */
  def normalizeDateFormat(format: String): String = {
    format.toUpperCase match {
      case "YYYY-MM-DD" => "yyyy-MM-dd"
      case "YYYY-MM" => "yyyy-MM"
      case "YYYY" => "yyyy"
      case _ => "yyyy-MM"
    }
  }

  /**
   * Increments the given date
   */
  def incrementDate(dateFormat: String, startDate: LocalDate, amount: Int): String = {
    val format = normalizeDateFormat(dateFormat)
    format.toUpperCase match {
      case "YYYY-MM-DD" => startDate.plusDays(amount).toString(format)
      case "YYYY-MM" => startDate.plusMonths(amount).toString(format)
      case "YYYY" => startDate.plusYears(amount).toString(format)
      case _ => startDate.plusMonths(amount).toString(format)
    }
  }

  /**
   * Returns the correct time difference
   */
  def getTimeRange(format: String, startDate: LocalDate, endDate: LocalDate): Int = {
    format.toUpperCase match {
      case "YYYY-MM-DD" => Days.daysBetween(startDate, endDate).getDays
      case "YYYY-MM" => Months.monthsBetween(startDate, endDate).getMonths
      case "YYYY" => Years.yearsBetween(startDate, endDate).getYears
      case _ => Months.monthsBetween(startDate, endDate).getMonths
    }
  }

  /**
   * Formats the data retrieved from the database for the frontend
   */
  def formatSeries(seriesIn: ResultSet,
                   startDate: LocalDate,
                   endDate: LocalDate,
                   categories: Array[String],
                   dateFormat: String): JsObject = {
    var seriesOut: JsArray = Json.arr()

    val timeRange = getTimeRange(dateFormat, startDate, endDate)
    var inPos = 0

    var columns = Json.arr(JsString("date"))
    categories.foreach { c =>
      columns = columns :+ JsString(c)
    }
    seriesOut = seriesOut :+ columns

    for (unit <- 0 to timeRange) {
      var outRow = categories.map(c => c -> BigDecimal(0.0)).toMap
      val date = incrementDate(dateFormat, startDate, unit)

      while (inPos < seriesIn.length && seriesIn(inPos)("t_0_date").asInstanceOf[String] == date) {
        val c = seriesIn(inPos)("t_0_category").asInstanceOf[String]
        outRow = outRow updated (c, seriesIn(inPos)("t_0_amount").asInstanceOf[BigDecimal])

        inPos = inPos + 1
      }
      var jsRow = Json.arr(JsString(date))
      categories.foreach(c => jsRow = jsRow :+ JsNumber(outRow(c)) )
      seriesOut = seriesOut :+ jsRow
    }

    Json.obj("data" -> seriesOut)
  }
}
