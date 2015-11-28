package models

object JsonFormats {
  import play.api.libs.json.Json

  implicit val accountFmt = Json.format[Account]
  implicit val categoryFmt = Json.format[Category]
  implicit val transactionFmt = Json.format[Transaction]
}