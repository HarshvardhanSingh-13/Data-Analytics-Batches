# Showing the Dataset
use myntra;

select * from products;

# 1. Finding the most expensive product on myntra
select * from products order by discounted_price desc;


# 2. Finding the least expensive product on myntra

select * from products order by discounted_price asc;

# 3. Finding the top 5 most expensive product on myntra
select * from products order by discounted_price desc limit 5;


# 4. Top 5 products based on best rating | rating*rating count

SELECT *, (rating*rating_count) as Rating_Average
FROM products
ORDER BY Rating_Average desc LIMIT 5;


select product_name , rating , rating_count, 
	round(rating*rating_count) as 'comb_rating' 
from products
	order by comb_rating desc limit 5;
    
    

## Find Products with at least 50% discount and order them in 
## desc based on discount %

SELECT * FROM products
WHERE discount_percent > 50
ORDER BY discount_percent desc;

## Find Top 10 Best-selling products based on (rating_count > 500)

SELECT * FROM products
WHERE rating_count > 500
ORDER BY rating_count desc LIMIT 10;




SELECT product_name, discount_percent
FROM products
WHERE discount_percent >= 50
ORDER BY discount_percent DESC;


## Best-selling products (rating_count > 500)

SELECT brand_name, product_name, rating_count
FROM products
WHERE rating_count > 500
ORDER BY rating_count DESC;
    
    
    
## Find the top 10 details of the product with category as 'tshirts' 
## based on rating*rating_count column

SELECT *, (rating*rating_count) as Ratings
FROM products
WHERE product_tag = 'tshirts'
ORDER BY Ratings desc LIMIT 10;


select * from products 
	where product_tag = 'tshirts'
		order by rating*rating_count desc;   
    
    



# 5. Finding the second most expensive product
select product_name , rating , rating_count, discounted_price from products
order by discounted_price desc limit 1,1;

# 6. Finding the second least expensive product

SELECT *
FROM products
ORDER BY discounted_price asc LIMIT 1,1;



select product_name , rating , rating_count, discounted_price from gfg.products
order by discounted_price asc limit 1,1;

# 7. Finding the 10th most expensive product

select product_name , rating , rating_count, discounted_price from gfg.products
order by discounted_price desc limit 9,1;

# 8. Finding the best rated product by nike

SELECT *
FROM products
WHERE brand_tag = 'nike'
ORDER BY rating_count desc LIMIT 1;



select product_name , rating , rating_count, 
round(rating*rating_count) as 'comb_rating' from gfg.products
where brand_tag = 'nike'
order by comb_rating asc limit 5;

# 9. Finding the worst rated product by nike & rating is not zero

SELECT *
FROM products
WHERE brand_tag = 'nike' and rating != 0
ORDER BY rating asc LIMIT 1;

# 10. Finding the top 10 best rated tshirt from nike or adidas based on rating*rating count

SELECT *,(rating_count*rating) as Ratings
FROM products
WHERE brand_tag IN ('nike','adidas') and product_tag = 'tshirts'
ORDER BY Ratings desc LIMIT 10;



select product_name , rating , rating_count, round(rating*rating_count) as 'comb_rating' from gfg.products
where brand_tag = 'nike' and rating != 0
order by comb_rating asc limit 5;

# 10. Finding the top 10 best rated tshirt from nike or adidas | rating*rating count
select product_name , rating , rating_count, brand_tag, discounted_price, round(rating*rating_count) as 'comb_rating' from gfg.products
where brand_tag  in('nike','adidas') and product_tag = 'tshirts'
order by comb_rating desc limit 10;

# 11. Worst rated 10 products based on the rating of 100 people atleast

SELECT *
FROM products
WHERE rating_count > 100
ORDER BY rating asc LIMIT 10;

# 12. 10 worst rated tshirt based on the rating of 100 people atleast

SELECT *
FROM products
WHERE (rating_count > 100) and product_tag = 'tshirts'
ORDER BY rating asc LIMIT 10;

## For products with rating_count > 100, calculate the ratio of 
## discounted_price / rating_count alias it as (price per sale) and 
## list the top 5 products with the highest ratio.

SELECT *,(discounted_price / rating_count) as price_per_sale
FROM products
WHERE rating_count > 100
ORDER BY price_per_sale desc LIMIT 5;



select product_name , rating, rating_count, brand_tag, product_tag, discounted_price, product_link from gfg.products
where rating_count > 100
order by rating asc limit 20;

# 12. 10 worst rated tshirt based on the rating of 100 people atleast
select product_name , rating, rating_count, brand_tag, discounted_price, product_link from gfg.products
where product_tag = 'tshirts' and rating_count > 100
order by rating asc limit 20;

# 13. Sort the products in alphaetical descending order based on their product_name and show the last 10 of them
select * from gfg.products
order by product_name asc limit 10;


# 14. Finding the top 10 best rated tshirts from nike or adidas | rating*rating count
select product_name , rating , rating_count, brand_tag, discounted_price, round(rating*rating_count) as 'comb_rating' from gfg.products
where brand_tag  in('nike','adidas') and product_tag = 'tshirts'
order by comb_rating desc limit 10;

# 15. Finding the list of tshirts from nike and adidas prices between 1000 and 1200 | Sort them based on ascending order of brand_name & price
select product_name , rating , rating_count, brand_tag, discounted_price from gfg.products
where brand_tag  in('nike','adidas') and product_tag = 'tshirts' and discounted_price between 1000 and 1200
order by brand_tag asc , discounted_price asc limit 10;

select product_name , rating , rating_count, brand_tag, discounted_price from gfg.products
where brand_tag  in('nike','adidas') and product_tag = 'tshirts' and discounted_price between 1000 and 2000
order by discounted_price asc, brand_tag asc;