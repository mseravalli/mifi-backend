package models

import org.joda.time.LocalDate

case class Transaction (
  accountNumber:     String,
  transactionDate:   LocalDate,
  exchangeDate:      LocalDate,
  receiver:          String,
  purpose:           String,
  amount:            BigDecimal,
  currency:          String,
  approved:          Boolean
)
