#!/bin/bash
echo "COPY transactions (id, account_number, transaction_date, exchange_date, receiver, purpose, amount, currency, category, sub_category, comment, approved) FROM stdin;" > tmp.tmp
./Generator.scala >> tmp.tmp
tail -n 1 tmp.tmp
head -n -1 tmp.tmp > insert.sql
echo "\\." >> insert.sql
rm tmp.tmp

