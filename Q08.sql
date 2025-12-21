-- ==================================================
-- 🌟 AJEET'S LEETCODE SQL PRACTICE 🌟
-- Question 183: Customers Who Never Order
-- ==================================================


-- ========================================
--        QUESTION
-- ========================================
-- Table: Customers
--
-- +-------------+-----------+
-- | Column Name | Type      |
-- +-------------+-----------+
-- | id          | int       |
-- | name        | varchar   |
-- +-------------+-----------+
--
-- Table: Orders
--
-- +-------------+------------+
-- | Column Name | Type       |
-- +-------------+------------+
-- | id          | int        |
-- | customerId  | int        |
-- +-------------+------------+
--
-- Find the names of customers
-- who never placed any order.


-- ========================================
--        APPROACH
-- ========================================
-- Use LEFT JOIN to keep all customers
-- Filter rows where no matching order exists
-- Use alias to match expected output column name


-- ========================================
--        SOLUTION
-- ========================================
SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders as o
  ON c.id = o.customerId
WHERE o.customerId IS NULL;


-- ========================================
--        NOTES
-- ========================================
-- 1. LEFT JOIN keeps all rows from Customers
-- 2. NULL in Orders means no order placed
-- 3. AS is used to rename output column
-- 4. Backticks are used because Orders is a keyword


-- ========================================
--        END
-- ========================================
