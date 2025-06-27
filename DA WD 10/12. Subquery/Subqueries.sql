-- SubQuery
USE Swiggy;
SELECT * FROM restaurants;

-- 1. Which restaurant of Abohar is visited by least number of people?

SELECT MIN(rating_count) from restaurants WHERE CITY = 'Abohar';
SELECT * FROM restaurants WHERE rating_count = 20 and city = 'Abohar';



SELECT MIN(rating_count) from restaurants WHERE CITY = 'Abohar';

SELECT * FROM restaurants 
WHERE rating_count = (SELECT MIN(rating_count) from restaurants WHERE CITY = 'Abohar') 
and city = 'Abohar';



-- Which restaurant of Bangalore is visited by least number of people?


SELECT MIN(rating_count) from restaurants WHERE City = 'Bangalore';

SELECT * from restaurants
WHERE rating_count = (SELECT MIN(rating_count) from restaurants WHERE City = 'Bangalore')
AND CITY = 'Bangalore';


-- 2. Which restaurant has generated maximum revenue all over india?

SELECT MAX(rating_count*cost) FROM restaurants;

SELECT * from restaurants
WHERE rating_count*cost = (SELECT MAX(rating_count*cost) FROM restaurants);


-- 3. How many restaurants are having rating more than the average rating?

SELECT COUNT(*) FROM restaurants
WHERE rating > (SELECT AVG(rating) from restaurants);


-- 4. Which restaurant of Delhi has generated most revenue


SELECT * FROM restaurants
WHERE rating_count*cost = (SELECT MAX(rating_count*cost) FROM restaurants WHERE CITY = 'Delhi')
AND CITY = 'Delhi';


-- 5. Which restaurant of more than average cost of an restaurant in Delhi has generated most revenue
-- Find the restaurant with cost more than average of Delhi
-- Find the one with the maximum revenue generated out of them


SELECT * FROM restaurants
WHERE
rating_count*cost = (SELECT MAX(rating_count*cost) FROM restaurants WHERE CITY = 'Delhi') AND
cost > (SELECT AVG(cost) FROM restaurants WHERE CITY = 'Delhi')
AND CITY = 'Delhi';


select * from restaurants
where cost > (select avg(cost) from restaurants where city='delhi') 
and (select  MAX(rating_count*cost) from restaurants where city='delhi') and city ="delhi" 
order by rating_count*cost desc limit 1;



