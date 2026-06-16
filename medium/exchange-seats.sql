-- Problem: Exchange Seats
-- Difficulty: Medium
-- Source: LeetCode
-- Link: https://leetcode.com/problems/exchange-seats/description/

-- Solution:

WITH seat_distribution AS (
    SELECT
 id,
 student,
 LAG(student) OVER(ORDER BY id ASC) AS prev_seat_student,
 LEAD(student) OVER(ORDER BY id ASC) AS next_seat_student
FROM Seat
)
SELECT
  id,
  CASE
    WHEN id % 2 = 1 AND next_seat_student IS NOT NULL THEN next_seat_student 
    WHEN id % 2 = 0 THEN prev_seat_student  
    ELSE student
  END AS student 

FROM seat_distribution
