USE SWIGGY;

-- Add a new column that categorizes restaurants based on rating:
-- 1) Excellent if rating >= 4.5
-- 2) Good if rating between 4.0 and 4.49
-- 3) Average otherwise


SELECT
    name,rating,
    CASE
        WHEN rating >= 4.5 THEN 'Excellent'
        WHEN rating >= 4.0 THEN 'Good'
        ELSE 'Average'
    END AS rating_category
FROM restaurants;



-- Mark Expensive vs Affordable Based on Cost
-- Using cost, classify restaurants as:
-- 1) Expensive if cost > 500
-- 2) Affordable if cost <= 500

SELECT name,cost,
	   CASE 
			WHEN cost > 500 THEN 'expensive'
            ELSE 'Affordable'
	   END AS price_segment
FROM restaurants;


-- Group cuisines into broader menu categories:
-- Indian if cuisine in ('North Indian','South Indian')
-- Continental if cuisine in ('American','Italian','Mexican')
-- Asian if cuisine in ('Chinese','Thai','Japanese')
-- Other for everything else

SELECT
    name,
    cuisine,
    CASE
        WHEN cuisine IN ('North Indian', 'South Indian') THEN 'Indian'
        WHEN cuisine IN ('American', 'Italian', 'Mexican') THEN 'Continental'
        WHEN cuisine IN ('Chinese', 'Thai', 'Japanese') THEN 'Asian'
        ELSE 'Other'
    END AS cuisine_group
FROM restaurants;