package models

import org.joda.time.LocalDate

case class Transaction (
  account_number:    String,
  transaction_date:  LocalDate,
  exchange_date:     LocalDate,
  receiver:          String,
  purpose:           String,
  amount:            BigDecimal,
  currency:          String,
  approved:          Boolean
)
