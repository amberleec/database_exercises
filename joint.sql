use codeup_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);
  ('ethan', 'ethan@example.com', 2);
  ('sarah', 'sarah@example.com', 4);
  ('cheyenne', 'cheyenne@example.com', null);
  ('cassy', 'cassy@example.com', 5);

select * from users;
select * from roles;

select *
from users
left join roles on users.role_id = roles.id;

select *
from users
right join roles on users.role_id = roles.id;

select *
from roles
left join users on roles.user_id = users.id;

select *
from roles
right join roles on roles.user_id = users.id;

SELECT name
FROM users
GROUP BY role_id;

