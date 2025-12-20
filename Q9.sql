-- ==================================================
-- 🌟 AJEET'S LEETCODE SQL PRACTICE 🌟
-- Question 1873: Calculate Special Bonus
-- ==================================================


-- ========================================
--        QUESTION
-- ========================================
-- Table: Employees
--
-- +--------------+----------+
-- | Column Name  | Type     |
-- +--------------+----------+
-- | employee_id  | int      |
-- | name         | varchar  |
-- | salary       | int      |
-- +--------------+----------+
--
-- Calculate the bonus for each employee:
-- 1. employee_id is odd
-- 2. name does NOT start with 'M'
-- If both conditions are true → bonus = salary
-- Otherwise → bonus = 0
-- Return result ordered by employee_id


-- ========================================
--        APPROACH
-- ========================================
-- Use SELECT with CASE
-- Check odd employee_id using MOD
-- Filter name using NOT LIKE
-- No JOIN, only WHERE-style filtering logic


-- ========================================
--        SOLUTION
-- ========================================
SELECT
  employee_id,
  CASE
    WHEN MOD(employee_id, 2) = 1
         AND name NOT LIKE 'M%'
    THEN salary
    ELSE 0
  END AS bonus
FROM Employees
ORDER BY employee_id;


-- ========================================
--        NOTES
-- ========================================
-- 1. MOD(employee_id, 2) = 1 → odd number
-- 2. NOT LIKE 'M%' → name not starting with M
-- 3. CASE is used for conditional output
-- 4. ORDER BY ensures correct sequence


-- ========================================
--        END
-- ========================================
