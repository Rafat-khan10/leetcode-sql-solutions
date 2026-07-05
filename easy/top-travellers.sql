-- Problem:  Top Travellers
-- Difficulty: Easy
-- Source: LeetCode
-- Link:https://leetcode.com/problems/top-travellers/description/

-- Solution:


WITH cte AS (
SELECT
   u.id,
   u.name,
  SUM(r.distance) OVER (PARTITION BY u.id) AS total_distance
FROM Users AS u
LEFT JOIN Rides AS r
ON u.id = r.user_id
)
SELECT
  DISTINCT name,
  CASE
    WHEN  total_distance IS NULL THEN 0 
    ELSE  total_distance
  END AS travelled_distance
FROM cte  
ORDER BY travelled_distance DESC, name ASC
