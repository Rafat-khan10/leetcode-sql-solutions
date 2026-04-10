-- Problem: Recyclable and Low Fat Products
-- Difficulty: Easy
-- Source: Leetcode
-- Link:https://leetcode.com/problems/recyclable-and-low-fat-products/description/

-- Solution:
SELECT 
  product_id
FROM Products
WHERE low_fats ='Y' AND recyclable ='Y'
