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