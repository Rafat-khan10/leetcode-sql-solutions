-- Problem: Product Sales Analysis I
-- Difficulty: Easy
-- Source: LeetCode
-- Link:https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50

-- Solution:

WITH product_info AS (
    SELECT
   s.sale_id,
   p.product_name,
   s.year,
   s.price
FROM Sales AS s 
INNER JOIN Product AS p
ON s.product_id = p.product_id
GROUP BY s.sale_id,p.product_name,s.year,s.price
)
SELECT
  product_name,
  year,
  price
FROM product_info
