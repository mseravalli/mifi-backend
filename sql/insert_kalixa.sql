INSERT INTO accounts ( account,
                       initial_amount,
                       rows_to_skip,
                       delimiter,
                       date_format,
                       final_row,
                       transaction_date,
                       exchange_date,
                       receiver,
                       purpose,
                       amount_in,
                       amount_out,
                       currency,
                       currency_default
) VALUES
  ('kalixa', 0.0,     1, ',', 'dd.MM.yyyy HH:mm:ss', NULL,              0, 0, '{2}',    '{1}', 3,  4,  -1, 'EUR')
;
