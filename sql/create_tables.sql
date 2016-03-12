DROP INDEX transaction_date_idx;
DROP TABLE transactions;
DROP TABLE category_match;
DROP TABLE sub_categories;
DROP TABLE categories;
DROP TABLE accounts;

CREATE TABLE accounts
(
  account VARCHAR(32),
  initial_amount  NUMERIC(8,4),
  rows_to_skip INTEGER,
  delimiter VARCHAR(8),
  date_format VARCHAR(32),
  final_row VARCHAR(32),
  transaction_date_pos INTEGER,
  exchange_date_pos INTEGER,
  receiver_pos INTEGER[],
  purpose_pos INTEGER[],
  amount_in_pos INTEGER,
  amount_out_pos INTEGER,
  currency_pos INTEGER,
  currency_default VARCHAR(3),
  PRIMARY KEY (account)
);

CREATE TABLE categories
(
  category VARCHAR(32),
  color VARCHAR(8),
  PRIMARY KEY (category)
);

CREATE TABLE sub_categories
(
  sub_category VARCHAR(32),
  PRIMARY KEY (sub_category)
);

CREATE TABLE category_match
(
  category VARCHAR(32) REFERENCES categories(category) ON UPDATE CASCADE,
  sub_category VARCHAR(32) REFERENCES sub_categories(sub_category) ON UPDATE CASCADE,
  color VARCHAR(8),
  PRIMARY KEY (category, sub_category)
);

CREATE TABLE transactions
(
  id serial8 PRIMARY KEY,
  account_number VARCHAR(32) REFERENCES accounts(account) ON UPDATE CASCADE,
  transaction_date DATE,
  exchange_date DATE,
  receiver VARCHAR(512),
  purpose VARCHAR(512),
  amount NUMERIC(8,4),
  currency VARCHAR(3),
  category VARCHAR(32) REFERENCES categories(category) ON UPDATE CASCADE,
  sub_category VARCHAR(32) REFERENCES sub_categories(sub_category) ON UPDATE CASCADE,
  comment VARCHAR(512),
  approved BOOLEAN NOT NULL,
  FOREIGN KEY (category,sub_category) REFERENCES category_match(category,sub_category)
); 

CREATE INDEX transaction_date_idx ON transactions USING btree (transaction_date DESC);
