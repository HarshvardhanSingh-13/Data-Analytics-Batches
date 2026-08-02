-- 1. Create and select the database
DROP DATABASE IF EXISTS Bookstore;
CREATE DATABASE Bookstore;
USE Bookstore;
 
-- 2. Create the Books table
CREATE TABLE Books (
    book_id            INT           AUTO_INCREMENT PRIMARY KEY,
    title              VARCHAR(255)  NOT NULL,
    author             VARCHAR(255)  NOT NULL,
    price              FLOAT         NOT NULL DEFAULT 9.99,
    published_date     DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    quantity_in_stock  INT           NOT NULL DEFAULT 10
);
 
-- 3. Insert the sample data
-- Books 1-5: all columns supplied explicitly.
INSERT INTO Books (title, author, price, published_date, quantity_in_stock) VALUES
    ('Learn SQL',              'John Doe',      15.99, '2022-05-15', 50),
    ('Python for Beginners',   'Jane Smith',    25.99, '2023-01-10', 20),
    ('Mastering Databases',    'Robert Brown',  29.99, '2021-11-05', 35),
    ('Advanced SQL',           'Emily Davis',   19.99, '2023-03-20', 40),
    ('Database Design Basics', 'Chris Johnson', 18.99, '2022-07-22', 60);
 
-- Book 6: only title and author were provided.
-- The remaining columns fall back to their DEFAULT values:
--   price             -> 9.99
--   published_date    -> current date/time (CURRENT_TIMESTAMP)
--   quantity_in_stock -> 10
INSERT INTO Books (title, author) VALUES
    ('Hello World', 'Charles Davidson');
 
-- 4. Verify the results
SELECT * FROM Books;