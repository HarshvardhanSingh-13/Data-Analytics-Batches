-- Class 1 Notes on Create and DROP

drop database if exists gfg;
create DATABASE if not exists gfg;

USE gfg;

CREATE TABLE users_1(
					user_name VARCHAR(50) PRIMARY KEY,
                    phone_number INT NOT NULL,
                    email VARCHAR(50) NOT NULL,
                    Address VARCHAR(100),
                    Gender VARCHAR(20)
					)
                    
                    
-- GFG

-- DATABASE -> gfg_courses

-- Tables 1) Users
-- (User_id, course_id ,User_name, Age, Address, country_code, phone_number, email_id)

-- Table 2) Courses
-- (Course_id, Course_id, mentor_name, ta_name, course_desc, course_duration, course_price)

-- Table 3) Transactions
-- (Transaction_id, Course_id, User_id, marked_price, discounted_price)


CREATE DATABASE if not exists gfg_courses;
use gfg_courses;

create table Users (
					User_ID INT PRIMARY KEY,
					User_name varchar(50),
					Age INT,
					Address varchar(50),
					Country_code  INT,
					Phone_no INT NOT NULL,
					Email_id varchar(50)
					);


create table Courses (
					course_id int PRIMARY KEY,
					mentor_name varchar(50),
					ta_name varchar (50),
					course_desc varchar(50),
					course_duration int,
					course_price int
					);

 
create table Transaction (
						Transaction_id int PRIMARY KEY,
						course_id int,
						user_id int,
						marked_price int,
						discounted_price int
						);







                    
