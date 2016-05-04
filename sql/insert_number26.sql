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
                       currency_default
) VALUES
  ('number26', 0.0, 0, ';', 'dd MMM yyyy', NULL, 0, 0, '{2}', '{3,4}', 1, 1, -1, 'EUR')
;
