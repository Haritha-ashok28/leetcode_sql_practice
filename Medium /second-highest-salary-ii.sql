-- Problem : Find the employees who earn the second-highest salary in each department. If multiple employees have the second-highest salary, include all employees with that salary.
-- Leetcode https://leetcode.com/problems/second-highest-salary-ii/
-- Difficulty: Medium

-- Table: employees
-- +--------+--------+-----------+
-- | emp_id | salary | dept      |
-- +--------+--------+-----------+
-- | 1      | 70000  | Sales     |
-- | 2      | 80000  | Sales     |
-- | 3      | 80000  | Sales     |
-- | 4      | 90000  | Sales     |
-- | 5      | 55000  | IT        |
-- | 6      | 65000  | IT        |
-- | 7      | 65000  | IT        |
-- | 8      | 50000  | Marketing |
-- | 9      | 55000  | Marketing |
-- | 10     | 55000  | HR        |
-- +--------+--------+-----------+

-- SOLUTION
  SELECT 
    emp_id,
    dept
FROM
    (
        SELECT emp_id, dept,
        DENSE_RANK()OVER(PARTITION BY dept ORDER BY salary DESC) AS num
        FROM employees
    ) AS a
WHERE num = 2
ORDER BY emp_id;
