-- ==================================================
-- 🌟 AJEET'S LEETCODE SQL PRACTICE 🌟
-- Question 1757: Recyclable and Low Fat Products
-- ==================================================


-- ========================================
--        QUESTION
-- ========================================
-- Table: Products
--
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | low_fats    | enum    |
-- | recyclable  | enum    |
-- +-------------+---------+
--
-- low_fats and recyclable are 'Y' or 'N'
--
-- Write a query to find the ids of products
-- that are both low fat and recyclable.


-- ========================================
--        APPROACH
-- ========================================
-- We need products where:
-- low_fats = 'Y' AND recyclable = 'Y'


-- ========================================
--        SOLUTION
-- ========================================
SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';


-- ========================================
--        NOTES
-- ========================================
-- 1. WHERE clause is used to filter rows
-- 2. AND ensures both conditions are true
-- 3. Only product_id is required in output


-- ========================================
--        END
-- ========================================
