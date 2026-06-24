-- Problem: Sales Person
-- Difficulty: Easy
-- Source: LeetCode
-- Link: https://leetcode.com/problems/sales-person/

-- Solution:

SELECT name
FROM SalesPerson
WHERE sales_id NOT IN(
     SELECT sp.sales_id
     FROM SalesPerson AS sp
     LEFT JOIN Orders AS o ON sp.sales_id = o.sales_id
     LEFT JOIN Company c ON o.com_id = c.com_id
     WHERE c.name ='RED'
)
