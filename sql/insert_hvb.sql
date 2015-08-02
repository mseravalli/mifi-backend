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
  ('hvb',    6035.50, 1, ';', 'dd.MM.yyyy',          NULL,              1, 2, '{3, 4}', '{5}', 6,  6,  7,  'EUR')
;
