-- Problem: find the confirmation rate of each user.
-- The confirmation rate of a user is the number of 'confirmed' messages divided by the total number of requested confirmation messages. The confirmation rate of a user that did not request any confirmation messages is 0. Round the confirmation rate to two decimal places.
-- Letcode: https://leetcode.com/problems/confirmation-rate/
-- Difficulty: Medium
-- Table: Confirmations
-- +----------------+----------+
-- | Column Name    | Type     |
-- +----------------+----------+
-- | user_id        | int      |
-- | time_stamp     | datetime |
-- | action         | ENUM     |
-- +----------------+----------+

-- SOLUTION:
  SELECT 
    s.user_id, 
    ROUND(AVG(if(c.action = "confirmed", 1, 0)),2) AS confirmation_rate
FROM
    Signups s
LEFT JOIN
    Confirmations c
ON s.user_id = c.user_id
GROUP BY user_id;
