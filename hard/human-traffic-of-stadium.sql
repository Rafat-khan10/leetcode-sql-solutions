-- Problem: Human Traffic of Stadium
-- Difficulty: Hard
-- Source: LeetCode
-- Link: https://leetcode.com/problems/human-traffic-of-stadium/description/

-- Solution:

WITH cte AS (
SELECT
  *
FROM Stadium
WHERE people >=100
),
cte2 AS (
SELECT
  *,
  id - ROW_NUMBER() OVER(ORDER BY id ASC) AS diff
FROM cte
)
SELECT
  id,
  visit_date,
  people 
FROM cte2
WHERE diff IN(
    SELECT
      diff
    FROM cte2 
    GROUP BY diff
    HAVING COUNT(*) >=3   
)  
