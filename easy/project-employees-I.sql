-- Problem: Project Employees I
-- Difficulty: Easy
-- Source: Leetcode
-- Link: https://leetcode.com/problems/project-employees-i/description/

-- Solution:
SELECT
  p.project_id,
  ROUND(AVG(experience_years),2) AS average_years 
FROM Project AS p
INNER JOIN Employee AS e
ON p.employee_id = e.employee_id
GROUP BY  p.project_id
