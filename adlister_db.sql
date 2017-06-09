CREATE DATABASE IF NOT EXISTS adlister_db;

USE adlister_db;

CREATE USER 'username'@'hostname';

GRANT ALL ON *.* TO 'username'@'localhost';

CREATE TABLE username (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(50),
  email VARCHAR(50),
  password VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id VARCHAR(50),
  title VARCHAR(50),
  description VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

