-- ==================================================
-- 🌟 AJEET'S LEETCODE SQL PRACTICE 🌟
-- Question 584: Find Customer Referee
-- ==================================================


-- ========================================
--        QUESTION
-- ========================================
-- Table: Customer
--
-- +-------------+-----------+
-- | Column Name | Type      |
-- +-------------+-----------+
-- | id          | int       |
-- | name        | varchar   |
-- | referee_id  | int       |
-- +-------------+-----------+
--
-- Find the names of customers who are
-- NOT referred by customer with id = 2.


-- ========================================
--        APPROACH
-- ========================================
-- Select customers where:
-- referee_id is NOT equal to 2
-- OR referee_id is NULL


-- ========================================
--        SOLUTION
-- ========================================
SELECT name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;


-- ========================================
--        NOTES
-- ========================================
-- 1. != filters out referee_id = 2
-- 2. NULL values need IS NULL check
-- 3. OR is required to include NULL rows


-- ========================================
--        END
-- ========================================
