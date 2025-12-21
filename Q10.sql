-- ==================================================
-- 🌟🌟🌟 AJEET'S LEETCODE SQL PRACTICE 🌟🌟🌟
--   LeetCode 620 – Not Boring Movies
-- ==================================================


-- ========================================
-- ❓ QUESTION
-- ========================================
-- Table: Cinema
--
-- Find the movies that are:
-- 1. Not boring (description != 'boring')
-- 2. id is odd
--
-- Return the result ordered by rating in
-- descending order.


-- ========================================
-- ✅ SOLUTION
-- ========================================

SELECT id, movie, description, rating
FROM Cinema
WHERE id % 2 = 1
  AND description != 'boring'
ORDER BY rating DESC;


-- ========================================
-- 📝 NOTES
-- ========================================
-- id % 2 = 1  → odd id
-- description != 'boring' → not boring movies
-- ORDER BY rating DESC → highest rating first
