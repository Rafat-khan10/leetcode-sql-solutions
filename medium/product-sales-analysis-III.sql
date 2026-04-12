-- Problem: Product Sales Analysis III
-- Difficulty: Medium
-- Source: Leetcode
-- Link: https://leetcode.com/problems/product-sales-analysis-iii/description/

-- Solution:
SELECT 
       product_id,
       YEAR AS first_year,
       quantity,
       price
FROM Sales
WHERE (product_id, YEAR) IN
    (SELECT product_id,
            MIN(YEAR) AS min_year
     FROM Sales
     GROUP BY product_id)
