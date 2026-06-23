-- Problem:  The Number of Employees Which Report to Each Employee
-- Difficulty: Easy
-- Source: LeetCode
-- Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/

-- Solution:

WITH employee_info AS (
    SELECT
  reports_to AS employee_id,
  COUNT(*) AS reports_count ,
  ROUND(AVG(age)) AS average_age 
FROM Employees 
WHERE reports_to IS NOT NULL
GROUP BY reports_to
)

SELECT
  e.employee_id,
  e.name,
  ei.reports_count,
  ei.average_age
FROM employee_info AS ei
INNER JOIN Employees as e
ON ei.employee_id = e.employee_id
ORDER BY e.employee_id ASC
