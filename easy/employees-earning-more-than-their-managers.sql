-- Problem:  Employees Earning More Than Their Managers
-- Difficulty: Easy
-- Source: Leetcode
-- Link:https://leetcode.com/problems/employees-earning-more-than-their-managers/description/

-- Solution:

SELECT 
  e1.name AS Employee 
FROM Employee AS e1
INNER JOIN Employee AS e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary
