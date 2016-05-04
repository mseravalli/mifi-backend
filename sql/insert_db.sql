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
  ('db',     0.0,     5, ';', 'MM/dd/yyyy',          'Account balance', 0, 1, '{2, 3}', '{4}', 15, 14, 16, 'EUR', 'ISO-8859-1')
;
