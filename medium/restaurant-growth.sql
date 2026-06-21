-- Problem: Restaurant Growth
-- Difficulty: Medium
-- Source: LeetCode
-- Link: https://leetcode.com/problems/restaurant-growth/description/

-- Solution:

WITH customer_info AS (
  SELECT
  visited_on,
  SUM(amount) AS amount
FROM Customer
GROUP BY visited_on
)
SELECT
  visited_on,
  SUM(amount) OVER(ORDER BY visited_on ASC ROWS BETWEEN  6 PRECEDING AND CURRENT ROW ) AS amount ,
  ROUND(AVG(amount) OVER(ORDER BY visited_on ASC ROWS BETWEEN  6 PRECEDING AND CURRENT ROW ),2) AS average_amount 
FROM customer_info
OFFSET 6
