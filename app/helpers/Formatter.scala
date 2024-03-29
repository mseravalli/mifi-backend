package helpers

import java.sql.Date
import java.time.format.DateTimeFormatter

import org.joda.time.{Days, LocalDate, Months, Years}
import play.api.libs.json._

object Formatter {

  // need to( transform 11.00, 11,00, 11.0, 11,0, 11 in 11.00
  def formatAmount(s: String): String = {
    val _a = """\d+(,\d+|\.\d+)?\-""".r // 11,00-
    val _b = """\d+(,\d+|\.\d+)?(\+)?""".r // 11,00+
    val _c = """(\+|\-)?\d+(,\d+|\.\d+)?""".r // -11,00 +11,00
    val _d = """(\-)?\d+(.\d+)?(,\d+)?(\+)?""".r // 1.001,95+ 1.001,95 -1.001,95
    val _e = """\d+(.\d+)?(,\d+)?(\-)?""".r // 1.001,95-
    val _f = """\d+(,\d+)?(.\d+)?""".r // 1,001.95
    val _g = """(\-)?\d+(,\d+)?(.\d+)?""".r // -1,001.95
    val res = s match {
      case _a(_*) => "-" + (s.replace(",", ".").replace("-", ""))
      case _b(_*) => s.replace(",", ".").replace("+", "")
      case _c(_*) => s.replace(",", ".").replace("+", "")
      case _d(_*) => s.replace(".", "").replace(",", ".").replace("+", "")
      case _e(_*) => "-" + s.replace(".", "").replace(",", ".").replace("-", "")
      case _f(_*) => s.replace(",", "").replace(",", ".")
      case _g(_*) => "-" + s.replace(",", "").replace(",", ".").replace("-", "")
      case _      => s
    }
    res
  }

  /** Ensures that only valid date formats are used to avoid SQL injection.
    */
  def normalizeDateFormat(format: String): String = {
    format.toUpperCase match {
      case "YYYY-MM-DD" => "yyyy-MM-dd"
      case "YYYY-MM"    => "yyyy-MM"
      case "YYYY"       => "yyyy"
      case _            => "yyyy-MM"
    }
  }

  /** Increments the given date
    */
  def incrementDate(
      dateFormat: String,
      startDate: LocalDate,
      amount: Int
  ): String = {
    val format = normalizeDateFormat(dateFormat)
    format.toUpperCase match {
      case "YYYY-MM-DD" => startDate.plusDays(amount).toString(format)
      case "YYYY-MM"    => startDate.plusMonths(amount).toString(format)
      case "YYYY"       => startDate.plusYears(amount).toString(format)
      case _            => startDate.plusMonths(amount).toString(format)
    }
  }

  def incrementDate(
      ld: java.time.LocalDate,
      format: String,
      amount: Int
  ): java.time.LocalDate = {
    format.toUpperCase match {
      case "YYYY-MM-DD" => ld.plusDays(amount)
      case "YYYY-MM"    => ld.plusMonths(amount)
      case "YYYY"       => ld.plusYears(amount)
      case _            => ld.plusMonths(amount)
    }
  }

  def incrementDate(
      ld: java.time.LocalDate,
      format: String
  ): java.time.LocalDate = {
    incrementDate(ld, format, 1)
  }

  def incrementDate(ld: Date, format: String, amount: Int): Date = {
    Date.valueOf(incrementDate(ld.toLocalDate, format, amount))
  }

  /** Returns the correct time difference
    */
  def getTimeRange(
      format: String,
      startDate: LocalDate,
      endDate: LocalDate
  ): Int = {
    format.toUpperCase match {
      case "YYYY-MM-DD" => Days.daysBetween(startDate, endDate).getDays
      case "YYYY-MM"    => Months.monthsBetween(startDate, endDate).getMonths
      case "YYYY"       => Years.yearsBetween(startDate, endDate).getYears
      case _            => Months.monthsBetween(startDate, endDate).getMonths
    }
  }

  def timeIterator(startDate: Date, endDate: Date, dateFormat: String) = {
    val start: java.time.LocalDate = startDate.toLocalDate
    val end: java.time.LocalDate = endDate.toLocalDate
    Iterator.iterate(start)(
      Formatter.incrementDate(_, dateFormat)
    ) takeWhile (_ isBefore end)
  }

  /** Formats the data retrieved from the database for the frontend
    */
  def formatSeries(
      seriesIn: Map[String, Map[String, BigDecimal]],
      startDate: Date,
      endDate: Date,
      categories: Array[String],
      dateFormat: String
  ): JsObject = {

    val aggregates = Array[String]("total", "min", "max")
    val cats = aggregates ++ (categories.filter(!aggregates.contains(_)).sorted)

    val catsJson = JsArray(JsString("date") +: cats.map(JsString(_)))

    val seriesFilled: Map[String, Map[String, BigDecimal]] = Formatter
      .timeIterator(startDate, endDate, dateFormat)
      .map { date =>
        val d: String = date.format(DateTimeFormatter.ofPattern(dateFormat))
        Map[String, Map[String, BigDecimal]](
          d -> seriesIn
            .getOrElse(d, Map[String, BigDecimal]("total" -> BigDecimal(0.0)))
        )
      }
      .toList
      .flatten
      .toMap

    val dataJson = seriesFilled.toList
      .sortWith(_._1 < _._1)
      .map { x =>
        JsString(x._1) +: JsArray(
          cats.map { c => JsNumber(x._2.getOrElse(c, BigDecimal(0.0))) }
        )
      }

    // var seriesOut: JsArray = Json.arr(catsJson,dataJson)
    var seriesOut: JsArray = catsJson +: JsArray(dataJson)

    Json.obj("data" -> seriesOut)
  }
}
