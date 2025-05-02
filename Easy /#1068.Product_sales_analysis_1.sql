-- Problem: Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
-- Leetcode: https://leetcode.com/problems/product-sales-analysis-i/
-- Difficulty: Easy
-- Table: Sales
-- +-------------+-------+
-- | Column Name | Type  |
-- +-------------+-------+
-- | sale_id     | int   |
-- | product_id  | int   |
-- | year        | int   |
-- | quantity    | int   |
-- | price       | int   |
-- +-------------+-------+

-- Table: Product
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | product_id   | int     |
-- | product_name | varchar |
-- +--------------+---------+

-- SOLUTION:
SELECT 
    p.product_name,
    s.year,
    s.price
FROM
Sales s
LEFT JOIN
Product p
ON s.product_id = p.product_id;
