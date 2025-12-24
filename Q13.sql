-- ==================================================
-- 🌟🌟🌟 AJEET'S LEETCODE SQL PRACTICE 🌟🌟🌟
-- Question: Delete Duplicate Emails
-- ==================================================


-- ========================================
--              PROBLEM
-- ========================================
-- Table: Person
--
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | email       | varchar |
-- +-------------+---------+
--
-- id is the primary key.
-- Emails may be duplicated.
--
-- Task:
-- Delete all duplicate emails and keep only
-- the record with the smallest id.
--
-- NOTE:
-- We must use DELETE, not SELECT.


-- ========================================
--              LOGIC
-- ========================================
-- 1. Join the Person table with itself
-- 2. Match rows having the same email
-- 3. Delete the row with the greater id
-- 4. Keep the smallest id for each email


-- ========================================
--              SOLUTION
-- ========================================

DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email
AND p1.id > p2.id;


-- ========================================
--              END
-- ========================================
