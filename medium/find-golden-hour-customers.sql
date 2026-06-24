-- Problem: Find Golden Hour Customers
-- Difficulty: Medium
-- Source: LeetCode
-- Link: https://leetcode.com/problems/find-golden-hour-customers/description/

-- Solution:

WITH customer_order_info AS (
SELECT
  customer_id,
  COUNT(*) AS total_orders ,
  ROUND(SUM(
   CASE
     WHEN order_timestamp::time BETWEEN '11:00:00' AND '14:00:00'
     OR order_timestamp::time BETWEEN '18:00:00' AND '21:00:00' THEN 1
     ELSE 0
   END)*100.0 / COUNT(*))AS peak_hour_percentage ,
  ROUND(AVG(order_rating),2)AS average_rating,
  ROUND(COUNT(order_rating)*100.0/ COUNT(*)) AS rated_order_percentage

FROM restaurant_orders
GROUP BY customer_id
)

SELECT
  customer_id,
  total_orders ,
  peak_hour_percentage ,
  average_rating 
FROM customer_order_info 
WHERE total_orders >=3 AND peak_hour_percentage >= 60 AND average_rating >=4.0 AND rated_order_percentage >=50
ORDER BY  average_rating DESC ,customer_id DESC


