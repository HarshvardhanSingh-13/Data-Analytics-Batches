DROP DATABASE if exists abc;
CREATE DATABASE if not exists ABC;

USE abc;

CREATE TABLE users (
 					user_name varchar(50) PRIMARY KEY,
					phone_number int NOT NULL,
                    email_id varchar(50),
					reg_number int
); 

SELECT * FROM users;

-- CASE STUDY BELOW

-- GFG
-- Users (user_id,user_name, email_id, country_code, phone_number, address, course_id)

-- Courses (course_id, course_name, duration, price, mentor_name, ta_name)

-- Transactions (course_id, price, transaction_id,user_id)

CREATE DATABASE if not exists GFG;

USE GFG;

CREATE TABLE users (
					user_id INT PRIMARY KEY,
 					user_name varchar(50),
					phone_number int NOT NULL,
                    email_id varchar(50),
					country_code VARCHAR(10),
                    Address VARCHAR(50),
                    course_id INT NOT NULL
); 

CREATE TABLE courses (
					user_id INT PRIMARY KEY,
 					user_name varchar(50),
					phone_number int NOT NULL,
                    email_id varchar(50),
					country_code VARCHAR(10),
                    Address VARCHAR(50),
                    course_id INT NOT NULL
); 

CREATE TABLE transactions (
					user_id INT PRIMARY KEY,
 					user_name varchar(50),
					phone_number int NOT NULL,
                    email_id varchar(50),
					country_code VARCHAR(10),
                    Address VARCHAR(50),
                    course_id INT NOT NULL
); 

