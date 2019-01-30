create database if not exists join_test_db;

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

INSERT INTO users (name, email, role_id)
values
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);
#left join
select * from users
left join roles r on users.role_id = r.id;
#join
select *
from users
join roles r on users.role_id = r.id;
#right join
select *
from users
right join roles r on users.role_id = r.id;

