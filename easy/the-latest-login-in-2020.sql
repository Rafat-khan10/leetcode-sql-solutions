-- Problem: The Latest Login in 2020
-- Difficulty: Easy
-- Source: LeetCode
-- Link:https://leetcode.com/problems/the-latest-login-in-2020/description/

-- Solution:

SELECT
  user_id,
  MAX(time_stamp) AS last_stamp          
FROM Logins 
WHERE EXTRACT(YEAR FROM time_stamp) = 2020
GROUP BY user_id 
