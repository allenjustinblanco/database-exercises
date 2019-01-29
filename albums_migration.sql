CREATE database if not EXISTS 'codeup_test_db';
Use codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artists VARCHAR(50) DEFAULT 'NONE',
    name VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    release_date INT not NULL,
    sales float,
    genre VARCHAR(100) DEFAULT 'none',
    PRIMARY KEY (id)
);

Describe albums;