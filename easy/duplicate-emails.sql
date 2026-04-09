-- Problem: Duplicate Emails
-- Difficulty: Easy
-- Source: Leetcode
-- Link:https://leetcode.com/problems/duplicate-emails/description/

-- Solution:
SELECT
  email AS Email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1
