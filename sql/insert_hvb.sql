INSERT INTO accounts ( account,
                       initial_amount,
                       rows_to_skip,
                       delimiter,
                       date_format,
                       final_row,
                       transaction_date_pos,
                       exchange_date_pos,
                       receiver_pos,
                       purpose_pos,
                       amount_in_pos,
                       amount_out_pos,
                       currency_pos,
                       currency_default,
                       encoding
) VALUES
  ('hvb',    6035.50, 1, ';', 'dd.MM.yyyy',          NULL,              1, 2, '{3, 4}', '{5}', 6,  6,  7,  'EUR', 'ISO-8859-1')
;
