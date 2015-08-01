package models

import scala.collection.mutable.ArrayBuffer

case class Account (
  account:            String,
  initialAmount:      BigDecimal,
  rowsToSkip:         Int = 0,
  delimiter:          String = ",",
  dateFormat:         String = "yyyy-mm-dd",
  finalRow:           String = "",
  transactionDatePos: Int = -1,
  exchangeDatePos:    Int = -1,
  receiverPos:        Seq[Int] = Nil,
  purposePos:         Seq[Int] = Nil,
  inPos:              Int = -1,
  outPos:             Int = -1,
  currencyPos:        Int = -1,
  currencyDefault:    String = "EUR"
)
