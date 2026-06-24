-- Problem: Bank Account Summary II
-- Difficulty: Easy
-- Source: LeetCode
-- Link:https://leetcode.com/problems/bank-account-summary-ii/description/

-- Solution:

SELECT
  u.name,
  SUM(t.amount) AS balance 
FROM Users AS u
INNER JOIN Transactions AS t
ON u.account = t.account
GROUP BY u.name 
HAVING SUM(t.amount) > 10000
