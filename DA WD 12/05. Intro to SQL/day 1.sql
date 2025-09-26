DROP DATABASE if exists b;
CREATE DATABASE if not exists b;

USE b;

-- This is class 1 of SQL

CREATE TABLE users(
				user_id VARCHAR(10) PRIMARY KEY ,
				first_name VARCHAR(50) default "ABC",
                last_name VARCHAR(50),
                age INT,
                phone_number INT
);

SELECT * FROM users;





-- DATABASE NAME - GFG

-- Courses(course_id,course_name,course_price,duration,mentor_name)
-- Student_details (student_id,first_name,last_name,email,age,phone_number,address,enrolled_course)
-- Transaction (transaction_id,date,course_id,mode_of_payment,student_id)



show databases;

 

use b;

 

Create database GFG;

 

Create table Courses (

					  course_id VARCHAR(20) PRIMARY KEY,

                      course_name char(20),

                      course_price float,

                      duration time,

                      mentor_name char(20)

);

 

Create table Student_details (

					  student_id VARCHAR(20) PRIMARY KEY,

                      first_name char(20),

                      last_name char(20),

                      email varchar(30) default 'abc@gmail.com',

                      age int, 

                      phone_number int,

                      address varchar(100),

                      enrolled_course char(25)

);

 

Create table Transaction1 (

					  transaction_id VARCHAR(20) PRIMARY KEY,

                      transaction_date date,

                      course_id VARCHAR(20),

                      mode_of_payment char(20),

                      student_id varchar(20)

);

 

show tables;

DESC courses;






