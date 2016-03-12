package models

object JsonFormats {
  import play.api.libs.json.Json
  import models.Tables.AccountsRow
  import models.Tables.TransactionsRow

  implicit val accountFmtOld = Json.format[Account]
  implicit val accountFmt = Json.format[AccountsRow]
  implicit val categoryFmt = Json.format[Category]
  implicit val transactionFmt = Json.format[TransactionsRow]
}