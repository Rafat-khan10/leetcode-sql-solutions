-- Problem:  Department Highest Salary
-- Difficulty: Medium
-- Source: Leetcode
-- Link:https://leetcode.com/problems/department-highest-salary/description/

-- Solution:

WITH cte AS (
  SELECT
    d.name AS Department ,
    e.name AS Employee ,
    e.salary AS Salary ,
    DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS rank
  FROM Employee AS e
  INNER JOIN Department AS d
  ON e.departmentId =d.id
)

SELECT
  Department,
  Employee ,
  Salary
FROM cte
WHERE rank=1
