-- Problem: Sales Analysis III
-- Difficulty: Easy
-- Source: LeetCode
-- Link: https://leetcode.com/problems/sales-analysis-iii/

-- Solution:

SELECT product_id,
       product_name
FROM Product
WHERE product_id NOT IN(
     SELECT p.product_id
     FROM Product AS p
     LEFT JOIN Sales AS s ON p.product_id = s.product_id
     WHERE s.sale_date < '2019-01-01' OR s.sale_date >'2019-03-31' OR s.sale_date IS NULL
  )
