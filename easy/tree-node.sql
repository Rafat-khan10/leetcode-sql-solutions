-- Problem: Tree Node
-- Difficulty: Easy
-- Source: LeetCode
-- Link: https://leetcode.com/problems/tree-node/description/

-- Solution:
SELECT
  id,
  CASE
    WHEN p_id IS NULL THEN 'Root'
    WHEN id IN (SELECT DISTINCT p_id FROM Tree) THEN 'Inner'
    ELSE 'Leaf'
   END AS type 
FROM Tree 
