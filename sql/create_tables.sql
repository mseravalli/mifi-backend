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
  delimiter VARCHAR(1),
  date_format VARCHAR(32),
  final_row VARCHAR(32),
  transaction_date INTEGER,
  exchange_date INTEGER,
  receiver INTEGER[],
  purpose INTEGER[],
  amount_in INTEGER,
  amount_out INTEGER,
  currency INTEGER,
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
