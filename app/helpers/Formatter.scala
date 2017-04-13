package helpers

import java.sql.Date
import java.text.SimpleDateFormat
import java.time.Duration
import java.time.temporal.ChronoUnit

import com.github.mauricio.async.db.ResultSet
import org.joda.time.{Days, LocalDate, Months, Years}
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

  def incrementDate(ld: java.time.LocalDate, format: String, amount: Int): java.time.LocalDate = {
    format.toUpperCase match {
      case "YYYY-MM-DD" => ld.plusDays(amount)
      case "YYYY-MM" => ld.plusMonths(amount)
      case "YYYY" => ld.plusYears(amount)
      case _ => ld.plusMonths(amount)
    }
  }

  def incrementDate(ld: java.time.LocalDate, format: String): java.time.LocalDate = {
    incrementDate(ld, format, 1)
  }

  def incrementDate(ld: Date, format: String, amount: Int): Date = {
    Date.valueOf(incrementDate(ld.toLocalDate, format, amount))
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

  def formatSeriesNew(seriesIn: Map[String, Map[String, BigDecimal]],
                      startDate: Date,
                      endDate: Date,
                      categories: Array[String],
                      dateFormat: String): JsObject = {

    val cats = "total" +: (categories.filter(_ != "total").sorted)

    val catsJson = JsArray(JsString("date") +: cats.map(JsString(_)))

    val dataJson = seriesIn
      .toList
      .sortWith(_._1 < _._1)
      .map{ x =>
        JsString(x._1) +: JsArray(
          cats.map { c => JsNumber(x._2.getOrElse(c, BigDecimal(0.0)))
          }
        )
      }

    // var seriesOut: JsArray = Json.arr(catsJson,dataJson)
    var seriesOut: JsArray = catsJson +: JsArray(dataJson)

    Json.obj("data" -> seriesOut)
  }
}
