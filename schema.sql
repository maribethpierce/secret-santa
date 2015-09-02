DROP TABLE IF EXISTS users, santas;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  phone VARCHAR(10)
);

CREATE TABLE santas (
  id SERIAL PRIMARY KEY,
  santa_id INTEGER,
  recipient_id INTEGER
);

INSERT INTO users (name, phone) VALUES ('Maribeth', '3362837787');
INSERT INTO users (name, phone) VALUES ('Katy', '3362837787');
INSERT INTO users (name, phone) VALUES ('AL', '3362837787');
INSERT INTO users (name, phone) VALUES ('Andy', '3362837787');
INSERT INTO users (name, phone) VALUES ('Remi', '3362837787');
INSERT INTO users (name, phone) VALUES ('Sotiria', '3362837787');
