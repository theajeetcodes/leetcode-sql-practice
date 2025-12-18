-- ==================================================
-- 🌟 AJEET'S LEETCODE SQL PRACTICE 🌟
-- Question 595: Big Countries
-- ==================================================


-- ========================================
--        QUESTION
-- ========================================
-- Table: World
--
-- +-------------+----------+
-- | Column Name | Type     |
-- +-------------+----------+
-- | name        | varchar  |
-- | continent   | varchar  |
-- | area        | int      |
-- | population  | int      |
-- | gdp         | bigint   |
-- +-------------+----------+
--
-- Write a query to find the name, population,
-- and area of countries where:
-- area >= 3000000 OR population >= 25000000


-- ========================================
--        APPROACH
-- ========================================
-- Filter rows using WHERE clause
-- Use OR to match any one condition


-- ========================================
--        SOLUTION
-- ========================================
SELECT name, population, area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;


-- ========================================
--        NOTES
-- ========================================
-- 1. WHERE is used for filtering rows
-- 2. OR returns rows matching any condition
-- 3. Only required columns are selected


-- ========================================
--                END
-- ========================================
