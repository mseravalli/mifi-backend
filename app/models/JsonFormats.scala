package models

object JsonFormats {
  import play.api.libs.json.Json
  import models.Tables.TransactionsRow

  implicit val accountFmt = Json.format[Account]
  implicit val categoryFmt = Json.format[Category]
  implicit val transactionFmt = Json.format[TransactionsRow]
}