package models

object JsonFormats {
  import play.api.libs.json.Json

  implicit val accountFmt = Json.format[Account]
  implicit val transactionFmt = Json.format[Transaction]
}