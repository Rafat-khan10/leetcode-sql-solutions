-- Problem: Customer Who Visited but Did Not Make Any Transactions
-- Difficulty: Easy
-- Source: LeetCode
-- Link:https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50

-- Solution:

SELECT
   v.customer_id,
   COUNT(*) AS count_no_trans 
FROM Visits AS v
LEFT JOIN Transactions AS t
ON v.visit_id = t.visit_id
WHERE v.visit_id NOT IN (
    SELECT
      visit_id 
    FROM Transactions 
)
GROUP BY v.customer_id
