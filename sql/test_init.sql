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
INSERT INTO categories (category, color) VALUES
('free time',         '#3F51B5'), -- indigo
('health',            '#2196F3'), -- blue
('house',             '#009688'), -- teal
('living',            '#8BC34A'), -- light green
('mobility',          '#CDDC39'), -- lime
('finance',           '#FF5722'), -- deep orange
('work and training', '#FFC107'), -- amber
('other',             '#BDBDBD')
;

INSERT INTO sub_categories (sub_category) VALUES
('general'),
('food'),
('clothes'),
('household'),
('pets'),
('hobbies'),
('sport'),
('going out'),
('entertainment'),
('travel'),
('gadgets'),
('presents'),
('doctor visits'),
('medicinals'),
('wellness'),
('rent'),
('furniture and accessories'),
('electricity'),
('internet'),
('phone'),
('gas'),
('fees'),
('vehicle'),
('public transport'),
('saving'),
('credit'),
('costs and fees'),
('insurance'),
('spending'),
('taxes'),
('support'),
('training'),
('material'),
('assistance'),
('contribution'),
('cash'),
('to categorize'),
('salary'),
('internal transfer')
;

INSERT INTO category_match (category, sub_category, color) VALUES
  ('health', 'general', '#42A5F5'),
  ('health', 'doctor visits', '#90CAF9'),
  ('health', 'medicinals', '#1E88E5'),
  ('health', 'wellness', '#1565C0'),
  ('living', 'clothes', '#C5E1A5'),
  ('living', 'food', '#9CCC65'),
  ('living', 'general', '#7CB342'),
  ('living', 'household', '#558B2F'),
  ('living', 'pets', '#33691E'),
  ('house', 'electricity', '#80CBC4'),
  ('house', 'furniture and accessories', '#4DB6AC'),
  ('house', 'general', '#26A69A'),
  ('house', 'internet', '#009688'),
  ('house', 'phone', '#00897B'),
  ('house', 'rent', '#00796B'),
  ('free time', 'entertainment', '#C5CAE9'),
  ('free time', 'gadgets', '#9FA8DA'),
  ('free time', 'general', '#7986CB'),
  ('free time', 'going out', '#5C6BC0'),
  ('free time', 'hobbies', '#3F51B5'),
  ('free time', 'presents', '#3949AB'),
  ('free time', 'sport', '#303F9F'),
  ('free time', 'travel', '#1A237E'),
  ('work and training', 'assistance', '#FFE082'),
  ('work and training', 'contribution', '#FFD54F'),
  ('work and training', 'general', '#FFCA28'),
  ('work and training', 'material', '#FFC107'),
  ('work and training', 'salary', '#FFB300'),
  ('work and training', 'training', '#FFA000'),
  ('work and training', 'travel', '#FF8F00'),
  ('other', 'cash', '#E0E0E0'),
  ('other', 'general', '#9E9E9E'),
  ('other', 'to categorize', '#616161'),
  ('finance', 'costs and fees', '#FFCCBC'),
  ('finance', 'credit', '#FFAB91'),
  ('finance', 'general', '#FF7043'),
  ('finance', 'insurance', '#FF5722'),
  ('finance', 'saving', '#F4511E'),
  ('finance', 'spending', '#E64A19'),
  ('finance', 'support', '#D84315'),
  ('finance', 'taxes', '#BF360C'),
  ('mobility', 'fees', '#E6EE9C'),
  ('mobility', 'gas', '#D4E157'),
  ('mobility', 'general', '#C0CA33'),
  ('mobility', 'public transport', '#9E9D24'),
  ('mobility', 'vehicle', '#827717'),
  ('finance', 'internal transfer', '#FF8A65')
;
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
  ('hvb',    0.00, 1, ';', 'dd.MM.yyyy',          NULL,              1, 2, '{3, 4}', '{5}', 6,  6,  7,  'EUR')
;
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
