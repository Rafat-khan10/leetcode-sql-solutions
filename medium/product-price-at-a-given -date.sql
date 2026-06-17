-- Problem:  Product Price at a Given Date
-- Difficulty: Medium
-- Source: Leetcode
-- Link:https://leetcode.com/problems/product-price-at-a-given-date/description/?envType=study-plan-v2&envId=top-sql-50

-- Solution:
WITH product_info AS (
    SELECT
     product_id,
     change_date,
     new_price 
    FROM Products 
    WHERE (product_id,change_date) IN (
    SELECT
       product_id,
       MAX(change_date) last_change_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)),

distinct_id AS (
    SELECT
        DISTINCT product_id 
    FROM Products 
),

product_price AS(
    SELECT
      di.product_id ,
      pi.new_price
    FROM distinct_id AS di
    LEFT JOIN product_info AS pi
    ON di.product_id = pi.product_id 
)

SELECT
    product_id,
    CASE
      WHEN new_price IS NULL THEN 10 
      ELSE new_price
    END AS price
FROM product_price
