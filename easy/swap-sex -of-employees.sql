-- Problem: Swap Sex of Employees
-- Difficulty: Easy
-- Source: LeetCode
-- Link:https://leetcode.com/problems/swap-sex-of-employees/description/

-- Solution:

UPDATE Salary 
  SET sex =
  CASE 
    WHEN sex='m' THEN 'f'
    ELSE 'm'
  END; 
