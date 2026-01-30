use swiggy;

select * from restaurants;

SELECT MAX(cost) FROM restaurants;

SELECT * FROM restaurants WHERE cost = (SELECT MAX(cost) FROM restaurants);



-- 1. Which restaurant of abohar is visied by least number of people?


SELECT * FROM restaurants WHERE CITY = 'abohar' 
and rating_count = (SELECT MIN(rating_count) FROM restaurants WHERE CITY = 'abohar') ;





select min(rating_count) as 'rating_count' from restaurants where city = "Abohar";
select * from restaurants where rating_count = 20 and city = "Abohar";

select * from restaurants where 
		city = 'abohar' and rating_count = (
						select min(rating_count) 
						from restaurants 
					where city = 'abohar');

-- 2. Which restaurant has generated maximum revenue all over india?


SELECT * FROM restaurants
WHERE rating_count*cost = (SELECT MAX(rating_count*cost) FROM restaurants);





select max(rating_count * cost) from restaurants;

select * from restaurants where 
		rating_count * cost = (select max(rating_count * cost) from restaurants);



-- 3. How many restaurants are having rating more than the average rating?


SELECT COUNT(*) FROM restaurants 
WHERE rating > (SELECT AVG(rating) FROM restaurants);





select avg(rating) from restaurants;

select count(*) as "total_restaurants" from restaurants 
	where rating >= (select avg(rating) from restaurants);

-- Which restaurants have a cost less than the least cost of 'Anjappar'{rest name}?

SELECT * FROM restaurants
WHERE cost < (
				SELECT MIN(cost) FROM restaurants
                WHERE name = 'Anjappar'
);



select * from restaurants
where cost < (
        select cost
        from restaurants
        where name = 'Anjappar'
    );



-- 4. Which restaurant of Delhi has generated most revenue


select max(rating_count * cost) from restaurants;
select * from restaurants where rating_count * cost = 5000000;

select * from restaurants where 
	rating_count*cost = (select max(rating_count*cost) from restaurants) 
				and city = "Delhi";

select * from restaurants where 
	rating_count * cost = (select max(rating_count * cost) from restaurants 
		where city = 'Delhi');

select * from restaurants where 
	rating_count * cost = (select max(rating_count * cost) from restaurants 
		where city = 'Delhi') and city = 'Delhi';

-- 5. Which restaurant of more than average cost of an restaurant in Delhi has generated most revenue



select * from restaurants where 
	rating_count * cost = (select max(rating_count * cost) from restaurants where city = 'Delhi' )
							and
							 cost > (select avg(cost) from restaurants where city = 'Delhi')
									and city = 'Delhi';
                        





