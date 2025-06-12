DROP DATABASE if exists abc;
CREATE DATABASE if not exists abc;

USE abc;

SELECT * FROM users;

-- CASE STUDY

-- USERS (user_id,user_name, phone_number, email, qualification, address)
-- Course (course_id, course_name,course_duration, cost,mentor_name,mode)
-- Transaction (transaction_id,course_id,user_id,timestamps,amount)

CREATE TABLE users(
					user_id VARCHAR(50) PRIMARY KEY,
                    user_name VARCHAR(50) NOT NULL UNIQUE,
                    phone_number int NOT NULL,
                    email_id VARCHAR(30),
                    qualification text DEFAULT 'Pending',
                    address text
);

CREATE TABLE courses(
					user_id VARCHAR(50) PRIMARY KEY,
                    user_name VARCHAR(50) NOT NULL UNIQUE,
                    phone_number int NOT NULL,
                    email_id VARCHAR(30),
                    qualification text DEFAULT 'Pending',
                    address text
);





