CREATE DATABASE Bookstore;
USE Bookstore;

-- create book table ( Patricia, i have added price and stock as these statisics are neceessary for the stockcontrol at the shop)
CREATE TABLE book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    language_id INT,
    publisher_id INT,
    publication_date DATE,
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- create book_author table
CREATE TABLE book_author (
    book_id INT,
    author_id INT
);

-- create the author table
CREATE TABLE author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

-- create the book_language table
CREATE TABLE book_language (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    language_name VARCHAR(50) UNIQUE
);

-- create the publisher (patricia note i have added the contact details as this is a supplier)
CREATE TABLE publisher (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(200) NOT NULL,
    contact_email VARCHAR(100),
    contact_phone VARCHAR(20)
);

