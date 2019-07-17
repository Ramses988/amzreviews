DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
  id           INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  name         VARCHAR                     NOT NULL,
  date         TIMESTAMP                   NOT NULL,
  email        VARCHAR                     NOT NULL,
  password     VARCHAR                     NOT NULL,
  enabled      BOOL DEFAULT TRUE           NOT NULL,
  country      VARCHAR                     NOT NULL,
  city         VARCHAR                     NOT NULL,
  balance      INTEGER DEFAULT 0           NOT NULL
);
CREATE UNIQUE INDEX users_unique_email_idx ON users (email);

CREATE TABLE products
(
  id                  INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  name                VARCHAR                     NOT NULL,
  date                TIMESTAMP                   NOT NULL,
  asin                VARCHAR                     NOT NULL,
  title               VARCHAR                     NOT NULL,
  price               DOUBLE PRECISION            NOT NULL,
  description         VARCHAR                     NOT NULL,
  active_orders       INTEGER DEFAULT 0           NOT NULL,
  completed_orders    INTEGER DEFAULT 0           NOT NULL,
  user_id             INTEGER                     NOT NULL,
  FOREIGN KEY (user_id) REFERENCES USERS (id) ON DELETE CASCADE
);
CREATE UNIQUE INDEX products_unique_asin ON products (asin);

CREATE TABLE orders
(
  id              INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  date            TIMESTAMP                NOT NULL,
  name            VARCHAR                  NOT NULL,
  price           DOUBLE PRECISION         NOT NULL,
  status          VARCHAR                  NOT NULL,
  payment         VARCHAR                  NOT NULL,
  key             VARCHAR                  NOT NULL,
  review_enable   BOOL DEFAULT FALSE       NOT NULL,
  reviews         VARCHAR                  NULL,
  order_id        VARCHAR                  NULL,
  user_id         INTEGER                  NULL,
  product_id      INTEGER                  NOT NULL,
  FOREIGN KEY (user_id) REFERENCES USERS (id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES PRODUCTS (id) ON DELETE CASCADE
);

CREATE TABLE images
(
  id              INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  url             VARCHAR               NOT NULL,
  product_id      INTEGER               NOT NULL,
  FOREIGN KEY (product_id) REFERENCES PRODUCTS (id) ON DELETE CASCADE
);