use restaurants;

select * from swiggy;


-- 1. Which restaurant of abohar is visied by least number of people?

select min(rating_count) as 'rating_count' from swiggy where city = "Abohar";
select * from swiggy where rating_count = 20 and city = "Abohar";

select * from swiggy where 
		city = 'abohar' and rating_count = (
						select min(rating_count) 
						from swiggy 
					where city = 'abohar');

-- 2. Which restaurant has generated maximum revenue all over india?


select max(rating_count * cost) from swiggy;

select * from swiggy where 
		rating_count * cost = (select max(rating_count * cost) from swiggy);

-- 3. How many restaurants are having rating more than the average rating?


select avg(rating) from swiggy;

select count(*) as "total_restaurants" from swiggy 
	where rating >= (select avg(rating) from swiggy);


-- 4. Which restaurant of Delhi has generated most revenue


select max(rating_count * cost) from swiggy;
select * from swiggy where rating_count * cost = 5000000;

select * from swiggy where 
	rating_count*cost = (select max(rating_count*cost) from swiggy) 
				and city = "Delhi";

select * from swiggy where 
	rating_count * cost = (select max(rating_count * cost) from swiggy 
		where city = 'Delhi');

select * from swiggy where 
	rating_count * cost = (select max(rating_count * cost) from swiggy 
		where city = 'Delhi') and city = 'Delhi';

-- 5. Which restaurant of more than average cost of an restaurant in Delhi has generated most revenue


select * from swiggy where 
	rating_count * cost = (select max(rating_count * cost) from swiggy where city = 'Delhi' )
							and
							 cost > (select avg(cost) from swiggy where city = 'Delhi')
									and city = 'Delhi';
                        

-- 6. Which restaurant of more than average cost of an restaurant in Delhi has generated most revenue


select city , sum(rating_count) from swiggy 
	group by city 
		order by sum(rating_count) 
			desc limit 5;