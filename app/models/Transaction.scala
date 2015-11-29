package models

import org.joda.time.LocalDate

case class Transaction (
  id:                Long,
  accountNumber:     String,
  transactionDate:   LocalDate,
  exchangeDate:      LocalDate,
  receiver:          String,
  purpose:           String,
  amount:            BigDecimal,
  currency:          String,
  category:          String,
  subCategory:       String,
  approved:          Boolean
)
