-- Problem: Customers Who Never Order
-- Difficulty: Easy
-- Source: Leetcode
-- Link:https://leetcode.com/problems/customers-who-never-order/description/

-- Solution:

SELECT
  c.name AS Customers
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.id =o.customerId  
WHERE o.customerId  IS NULL 
