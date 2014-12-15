DROP TABLE IF EXISTS products_users;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

CREATE TABLE products(
  id SERIAL PRIMARY KEY,
  product_name text NOT NULL,
  description text NOT NULL,
  image text NOT NULL,
  price money NOT NULL,
  seller text NOT NULL
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