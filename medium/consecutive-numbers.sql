-- Problem: Consecutive Numbers
-- Difficulty: Medium
-- Source: LeetCode
-- Link:https://leetcode.com/problems/consecutive-numbers/description/

-- Solution:

WITH cte AS (
SELECT
  id,
  num,
  LAG(num) OVER(ORDER BY id ASC) AS previous_num,
  LEAD(num) OVER(ORDER BY id ASC) AS next_num
FROM Logs 
)

SELECT
  DISTINCT num AS ConsecutiveNums 
FROM cte
WHERE num = previous_num  AND num = next_num 
