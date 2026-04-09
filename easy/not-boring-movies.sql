-- Problem:Not Boring Movies
-- Difficulty: Easy
-- Source: Leetcode
-- Link:https://leetcode.com/problems/not-boring-movies/description/

-- Solution:
SELECT *
FROM Cinema 
WHERE id % 2 = 1 AND description != 'boring'
ORDER BY rating DESC
