-- Problem: Calculate Special Bonus
-- Difficulty: Easy
-- Source: Leetcode
-- Link:https://leetcode.com/problems/calculate-special-bonus/description/

-- Solution:

SELECT
 employee_id ,
 CASE
   WHEN employee_id % 2 = 1 AND name NOT LIKE 'M%' THEN salary
   ELSE 0
 END bonus
FROM Employees
ORDER BY employee_id ASC
