-- Problem: show the unique ID of each user, If a user does not have a unique ID replace just show null.
-- Leetcode: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- Diificulty: Easy
-- Table: Employees
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | name          | varchar |
-- +---------------+---------+

-- Table: EmployeeUNI
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | unique_id     | int     |
-- +---------------+---------+

-- SOLUTION:
SELECT 
    eu.unique_id, 
    e.name
FROM
Employees e
LEFT JOIN
EmployeeUNI eu
ON e.id = eu.id;
