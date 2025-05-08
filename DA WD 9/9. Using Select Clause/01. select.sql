use myntra;

SELECT * FROM products;

-- Showing Specific Rows

SELECT sizes FROM products;
SELECT discounted_price, brand_name, product_tag FROM products;

-- CREATING A NEW ROW WITH MATHEMATICAL OPERATIONS

SELECT product_name, brand_name, marked_price, discounted_price, marked_price - discounted_price as 'discounted_amt'
FROM products;

-- CREATE A NEW COLUMN THAT IS DISCOUNT %

SELECT product_name, brand_name, marked_price, discounted_price, 
		ROUND(((marked_price - discounted_price)/marked_price)*100,2) as 'discount %'
FROM products;

-- CREATING MULTIPLE SUCH COLUMNS

SELECT product_name, brand_name, marked_price, discounted_price, marked_price - discounted_price as 'discounted_amt',
	ROUND(((marked_price - discounted_price)/marked_price)*100,2) as 'discount %'
FROM products;


-- FIND UNIQUE BRAND NAMES

SELECT DISTINCT(brand_name) FROM products;

-- ADDING WHERE CLAUSE

-- Q) FInd Unique Products served by Adidas

SELECT DISTINCT(product_tag), brand_tag FROM products WHERE brand_tag = 'adidas';

-- Q) FIND UNIQUE Products served by Adidas where discounted price > 5000

SELECT DISTINCT(product_tag), brand_tag, discounted_price FROM products 
WHERE brand_tag = 'adidas' and discounted_price > 5000;

-- Q) Find UNIQUE Product tag of brand adidas where discounted price > 5000 and Marked price > 8000

SELECT DISTINCT(product_tag), brand_tag, discounted_price, marked_price
FROM products
WHERE brand_name = 'H&M' and discounted_price > 5000 and marked_price > 8000;

-- Q) Find Unqiue Product Tag of 'Roadster' with discounted price between 3000 and 5000

SELECT DISTINCT(product_tag), brand_tag, discounted_price
FROM products
WHERE brand_name = 'Roadster' and discounted_price > 3000 and discounted_price < 5000;

SELECT DISTINCT(product_tag), brand_tag, discounted_price
FROM products
WHERE brand_name = 'Roadster' and discounted_price between 3000 and 5000;

-- Q) Find Unqiue Product Tag of 'Roadster' with discounted price between 4000 and 8000 and rating > 3 
--    and rating count > 12

SELECT DISTINCT(product_tag), brand_tag, discounted_price
FROM products
WHERE brand_name = 'Adidas' and discounted_price between 4000 and 8000 and rating > 3 and rating_count > 12;


-- Q) FIND unique products of Brand Adidas or Pume where discounted price between 3000 and 8000

SELECT DISTINCT(product_tag), brand_tag, discounted_price
FROM products
WHERE (brand_tag = 'adidas' or brand_tag = 'Pume') and (discounted_price between 3000 and 8000);

SELECT DISTINCT(product_tag), brand_tag, discounted_price
FROM products
WHERE brand_tag IN ('adidas','puma')  and (discounted_price between 3000 and 8000);

-- Q) Find Unique products not of Brand H&M or Biba where discounted price between 2000 and 4000

SELECT DISTINCT(product_tag), brand_tag, discounted_price
FROM products
WHERE brand_tag NOT IN ('H&M','Biba')  and (discounted_price between 2000 and 4000);



-- Showing the Data
select * from products;

-- showing specific columns
select brand_name from products;
select brand_name, rating, rating_count from products;


-- showing specific column in specific order
select rating, brand_name, rating_count from products;

-- create new column with mathemtical functions | Making Discounted Amount
select product_name, brand_name,marked_price, discounted_price, marked_price - discounted_price as 'discount_amount' from products;

select product_name, brand_name,marked_price, discounted_price, 
		marked_price - discounted_price as 'discount_amount',
		ROUND(((marked_price - discounted_price)/marked_price)*100) as 'discount_perc'
from products;

-- create new column with mathemtical functions | Making Rating Count * Rating
select product_name, brand_name, rating_count, rating, rating_count * rating as 'rating_filter' from products; 

-- create new column with mathemtical functions | Making Discount Percentage
select product_name, brand_name,marked_price, discounted_price, ROUND(((marked_price - discounted_price)/marked_price)*100) as 'discount_perc' from products;


-- Finding UNIQUE values
select distinct(brand_name) from products;

-- Adding Where Clause
select * from products where True;

-- Adding Distinct with Where | Unique Products served by Adidas
select * from products  where brand_tag = 'adidas';


-- Adding Distinct with Where | Unique Products served by Adidas
select distinct(product_tag) from products  where brand_tag = 'adidas';

-- Products with Multiple Where Clause with AND
select distinct * from products  
where  brand_tag = 'adidas' and discounted_price > 5000;

-- Adidas Products with Price betwen 3000 to 5000
select distinct * from products  
where brand_tag = 'adidas' and discounted_price > 3000 and discounted_price < 5000;

-- Products with BETWEEN
select distinct * from products  where brand_tag = 'adidas'
	and discounted_price between 3000 and  5000;

-- Adding more filters
select distinct * from products  
where brand_tag = 'adidas' and (discounted_price between 3000 and  8000) and rating > 4;

-- Lets go one steps ahead
select distinct * from products 
where brand_tag = 'adidas' and (discounted_price between 3000 and  8000) and rating > 4 and rating_count > 10;

-- One More

-- Using OR
select distinct * from products  
where (brand_tag = 'adidas' or brand_tag = 'puma') and (discounted_price between 5000 and  8000) ;

-- Using NOT
select distinct * from products  
where not (brand_tag = 'adidas') and (discounted_price between 5000 and  8000) ;

-- Using IN
select distinct * from products  
where brand_name in ('adidas','puma') and (discounted_price between 5000 and  8000) ;

-- Using NOT IN
select distinct * from products 
where brand_name not in ('adidas','puma') and (discounted_price between 5000 and  8000) ;