package models

import play.api.libs.json._
import models._
import java.sql.Date

object JsonFormats {
  implicit val sqlDateFmt = new Format[Date] {
    val sdf = new java.text.SimpleDateFormat("yyyy-MM-dd")
    val sdfPattern = "\\b(0[1-9]|[1-3][0-9])-(0[1-9]|1[0-2])-[1-9][0-9]{3}\\b"
    def reads(json: JsValue):JsResult[Date] = json match {
      case JsString(d) => {
        val theDate = new Date(sdf.parse(d).getTime)
        if (d.matches(sdfPattern) && theDate.compareTo(new Date(0)) > 0)
          JsSuccess(new Date(sdf.parse(d).getTime))
        else
          JsError("Validate error expected date in format 'dd-MM-yyyy'")
      }
      case _ => JsError("Validate error expected date in String")
    }

    def writes(sd: Date): JsValue = JsString(sdf.format(sd))
  }

  implicit val accountFmt = Json.format[models.AccountsRow]
  implicit val categoryFmt = Json.format[Category]
  implicit val transactionFmt = Json.format[models.TransactionsRow]
}
