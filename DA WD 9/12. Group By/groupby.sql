# Showing the Dataset
use myntra;

select * from products;

SELECT brand_name, SUM(discounted_price) 
FROM products
GROUP BY brand_name;



-- 1. Finding the names of unique brand
select distinct brand_name from products;

-- 2. Finding the number of unique brands
select count(distinct brand_name)  from products;

-- 3. Finding the number of products in each brands

SELECT brand_name, COUNT(product_name), COUNT(discounted_price)
FROM products
GROUP BY brand_name;


select brand_tag , count(product_tag) from products group by brand_tag;

SELECT brand_tag, COUNT(distinct(product_tag)), avg(marked_price) 
from products group by brand_tag;

-- No of products in each product category

SELECT product_tag, COUNT(product_tag)
FROM products
GROUP BY product_tag
ORDER BY COUNT(product_tag) DESC;


SELECT product_tag, count(product_name) FROM products
GROUP BY product_tag;

-- Most Expensive Brand

SELECT brand_name, SUM(discounted_price) as Price
FROM products
GROUP BY brand_name
ORDER BY Price DESC LIMIT 1;

-- Most Expensive Category

SELECT product_tag, SUM(discounted_price) as Price
FROM products
GROUP BY product_tag
ORDER BY Price DESC LIMIT 1;



SELECT brand_name, avg(discounted_price) FROM products
GROUP BY brand_name ORDER BY avg(discounted_price) desc LIMIT 1;

-- Most Expensive Category

SELECT product_tag, avg(discounted_price) FROM products
GROUP BY product_tag ORDER BY avg(discounted_price) desc LIMIT 1;

-- Top 5 brand generated maximum revenue

SELECT brand_name, SUM(rating_count*discounted_price) as revenue
FROM products
GROUP BY brand_name
ORDER BY revenue DESC LIMIT 5;

SELECT brand_tag, SUM(discounted_price*rating_count) as Revenue
FROM products
GROUP BY brand_tag
ORDER BY Revenue DESC LIMIT 5;
        
-- Top 2nd brand sold maximum products

SELECT brand_name, SUM(rating_count) as rating
FROM products
group by brand_name
order by rating desc LIMIT 1,1;



SELECT brand_tag, SUM(rating_count) as s FROM products
	GROUP BY brand_tag
		ORDER BY s desc limit 5;

-- Top 5 categories sold the most along with their revenue 
-- | sort based on revenue

SELECT product_tag,SUM(rating_count) ,SUM(discounted_price*rating_count) as revenue
FROM products
GROUP BY product_tag
ORDER BY revenue DESC LIMIT 5;




SELECT product_tag, SUM(rating_count), SUM(discounted_price*rating_count) as revenue FROM products
	GROUP BY product_tag
		ORDER BY revenue desc limit 5;

-- 4. Finding the top 5 brand who has the most number of products |
--  different product in their inventory

SELECT brand_name, COUNT(distinct(product_tag))
FROM products
GROUP BY brand_name
ORDER BY COUNT(distinct(product_tag)) DESC LIMIT 5;


select brand_tag , count(product_name) as 'product_count' from products 
group by brand_tag
order by product_count desc limit 5;




select brand_tag , sum(rating_count) as 'products_sold' from gfg.products 
group by brand_tag
order by products_sold desc limit 10;

-- 6. Finding the top 5 most expensive brands based on their discounted price
select brand_tag , round(avg(discounted_price)) as 'price' from products 
where brand_tag != 'dyson'
group by brand_tag 
order by price desc limit 5;

-- 7. Finding the top 5 least expensive brands based on their discounted price

select brand_tag , SUM(discounted_price) as price from products 
group by brand_tag 
order by price asc limit 5;

-- 8. Finding the top 10 best-selling product categories 

select product_tag , sum(rating_count) as 'price' from products 
group by product_tag 
order by price desc limit 10;

-- 9. Finding the top 10 brands who gives maximum discount
select brand_tag , avg(discount_percent) as 'price' from products 
group by brand_tag 
order by price desc limit 10;

-- 10. Finding the top 5 most expensive product categories

select product_tag , round(avg(discounted_price)) as 'price' from gfg.products 
group by product_tag 
order by price desc limit 10;




-- 11. Which category of a specific brand is sold the most?

SELECT brand_name, product_tag
FROM products
GROUP BY brand_name, product_tag
ORDER BY SUM(rating_count) desc;

SELECT BRAND_NAME,PRODUCT_TAG
FROM PRODUCTS
WHERE BRAND_NAME='H&M'
GROUP BY PRODUCT_TAG
ORDER BY SUM(RATING_COUNT) DESC;




select product_tag, brand_name,  sum(rating_count)  as 'sold' 
	from products 
		group by product_tag, brand_name 
		order by sold desc limit 10;