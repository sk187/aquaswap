DROP TABLE IF EXISTS products_users;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

CREATE TABLE products(
  id SERIAL PRIMARY KEY,
  product_name text NOT NULL,
  description text NOT NULL,
  image text NOT NULL,
  price money NOT NULL CONSTRAINT positive_price CHECK (price>0),
  seller text NOT NULL,
  quantity integer NOT NULL CONSTRAINT positive_quantity CHECK(quantity>0), 
);

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  user_name text NOT NULL,
  email text NOT NULL UNIQUE,
  password_digest text NOT NULL
);

CREATE TABLE products_users(
  product_id integer REFERENCES products,
  user_id integer REFERENCES users
);

CREATE TABLE user_baskets(
  
)