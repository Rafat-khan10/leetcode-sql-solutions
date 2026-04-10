-- Problem: Group Sold Products By The Date
-- Difficulty: Easy
-- Source: Leetcode
-- Link:https://leetcode.com/problems/group-sold-products-by-the-date/description/

-- Solution:

SELECT
  sell_date,
  COUNT(DISTINCT product) AS num_sold,
  STRING_AGG(DISTINCT product, ',' ORDER BY product ASC) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
