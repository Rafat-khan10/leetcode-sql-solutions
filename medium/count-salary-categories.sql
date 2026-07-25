-- Problem: Count Salary Categories
-- Difficulty: Medium
-- Source: LeetCode
-- Link: https://leetcode.com/problems/count-salary-categories/description/

-- Solution:

SELECT
  'Low Salary' AS category,
  SUM(CASE
    WHEN income < 20000 THEN 1 
    ELSE 0
   END) AS accounts_count 
 FROM Accounts
  UNION
 SELECT
  'Average Salary',
  SUM(CASE
    WHEN income BETWEEN 20000 AND 50000 THEN 1 
    ELSE 0
   END) 
 FROM Accounts
  UNION
SELECT
  'High Salary',
  SUM(CASE
    WHEN income > 50000 THEN 1 
    ELSE 0
   END) 
 FROM Accounts
