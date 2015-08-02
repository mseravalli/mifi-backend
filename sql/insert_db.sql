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
  ('db',     0.0,     5, ';', 'MM/dd/yyyy',          'Account balance', 0, 1, '{2, 3}', '{4}', 14, 13, 15, 'EUR')
;
