-- Problem: Employee Bonus
-- Difficulty: Easy
-- Source: Leetcode
-- Link:https://leetcode.com/problems/employee-bonus/description/

-- Solution:

SELECT
  e.name,
  b.bonus
FROM Employee AS e
LEFT JOIN Bonus AS b
ON e.empId=b.empId       
WHERE b.bonus < 1000 OR b.bonus IS NULL
