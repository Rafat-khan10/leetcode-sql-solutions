-- Problem: Replace Employee ID With The Unique Identifier
-- Difficulty: Easy
-- Source: Leetcode
-- Link:https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/

-- Solution:
SELECT
  eu.unique_id ,
  e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS eu
ON e.id=eu.id
