-- Problem: Find the names of the customer that are not referred by the customer with id = 2.
-- Leetcode: https://leetcode.com/problems/find-customer-referee/
-- Difficulty: Easy
-- Table: Customer
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | referee_id  | int     |
-- +-------------+---------+

-- SOLUTION:
  SELECT 
    name 
  FROM 
    Customer
  WHERE 
    referee_id IS NULL OR referee_id !=2;

