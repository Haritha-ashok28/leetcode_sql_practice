-- Problem:  find managers with at least five direct reports
-- Leetcode: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Difficulty: Medium

-- Table: Employee
-- +-----+-------+------------+-----------+
-- | id  | name  | department | managerId |
-- +-----+-------+------------+-----------+
-- | 101 | John  | A          | null      |
-- | 102 | Dan   | A          | 101       |
-- | 103 | James | A          | 101       |
-- | 104 | Amy   | A          | 101       |
-- | 105 | Anne  | A          | 101       |
-- | 106 | Ron   | B          | 101       |
-- +-----+-------+------------+-----------+

-- SOLUTION:
  SELECT e.name
FROM Employee e
JOIN
    (
        SELECT managerId, COUNT(*) AS direct_report
        FROM Employee
        GROUP BY managerID
        HAVING direct_report >= 5
    ) emp
ON e.id = emp.managerId;
