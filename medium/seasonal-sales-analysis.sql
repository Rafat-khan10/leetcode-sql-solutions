-- Problem:  Seasonal Sales Analysis
-- Difficulty: Medium
-- Source: LeetCode
-- Link:https://leetcode.com/problems/seasonal-sales-analysis/description/

-- Solution:
WITH seasonal_product AS (
    SELECT
  CASE
    WHEN EXTRACT(MONTH FROM sale_date) IN (1,2,12) THEN 'Winter'
    WHEN EXTRACT(MONTH FROM sale_date) IN (3,4,5) THEN 'Spring'
    WHEN EXTRACT(MONTH FROM sale_date) IN (6,7,8) THEN 'Summer'
    ELSE 'Fall'
  END AS season,
  p.category,
  SUM(s.quantity) AS total_quantity , 
  SUM(s.quantity * s.price ) AS total_revenue
FROM sales AS s 
INNER JOIN products AS p
ON s.product_id = p.product_id
GROUP BY season, category
),
rank AS (
SELECT
  *,
  DENSE_RANK() OVER(PARTITION BY season ORDER BY total_quantity DESC,total_revenue DESC,category ASC) AS product_rank
FROM seasonal_product
)
SELECT
  season,
  category,
  total_quantity,
  total_revenue
FROM rank 
WHERE product_rank=1
