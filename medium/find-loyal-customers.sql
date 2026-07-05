-- Problem: Find Loyal Customers
-- Difficulty: Medium
-- Source: LeetCode
-- Link: https://leetcode.com/problems/find-loyal-customers/description/

-- Solution:

WITH customer_info AS (
SELECT
   customer_id,
   SUM(CASE
     WHEN transaction_type ='purchase' THEN 1
     ELSE 0
   END) AS total_purchase_count,
    ROUND(SUM(CASE
     WHEN transaction_type ='refund' THEN 1
     ELSE 0
   END)*100.0 /COUNT(*),2) AS refund_rate,
   MIN(transaction_date) AS first_transaction_date,
   MAX(transaction_date) AS last_transaction_date
FROM customer_transactions
GROUP BY customer_id 
)
SELECT
  customer_id
FROM customer_info
WHERE total_purchase_count>= 3 
AND refund_rate<20 
AND (last_transaction_date  - first_transaction_date)>=30
ORDER BY customer_id ASC
