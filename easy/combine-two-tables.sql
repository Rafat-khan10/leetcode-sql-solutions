-- Problem: Combine Two Tables
-- Difficulty: Easy
-- Source: Leetcode
-- Link: https://leetcode.com/problems/combine-two-tables/description/

-- Solution:

SELECT
  p.firstName,
  p.lastName,
  a.city,
  a.state
FROM Person AS p
LEFT JOIN Address AS a
ON p.personId=a.personId
