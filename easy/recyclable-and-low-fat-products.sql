-- Problem: Recyclable and Low Fat Products
-- Difficulty: Easy
-- Source: Leetcode
-- Link:https://leetcode.com/problems/calculate-special-bonus/description/

-- Solution:
SELECT 
  product_id
FROM Products
WHERE low_fats ='Y' AND recyclable ='Y'
