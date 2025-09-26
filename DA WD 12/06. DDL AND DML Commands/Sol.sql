DROP Database if exists Bookstore;
CREATE DATABASE if not exists Bookstore;
USE Bookstore;
 
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price FLOAT DEFAULT 9.99 NOT NULL,
    published_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    quantity_in_stock INT DEFAULT 10 NOT NULL
);
INSERT INTO Books (title, author, price, published_date, quantity_in_stock)
VALUES
('Learn SQL', 'John Doe', 15.99, '2022-05-15 00:00:00', 50),
('Python for Beginners', 'Jane Smith', 25.99, '2023-01-10 00:00:00', 20),
('Mastering Databases', 'Robert Brown', 29.99, '2021-11-05 00:00:00', 35),
('Advanced SQL', 'Emily Davis', 19.99, '2023-03-20 00:00:00', 40),
('Database Design Basics', 'Chris Johnson', 18.99, '2022-07-22 00:00:00', 60);
 
INSERT INTO Books (title, author) VALUES
("Hello World", "Charles Davidson");
 
select * from books;