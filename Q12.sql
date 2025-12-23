-- ===================================================================================
-- 🌟🌟🌟 LEETCODE SQL PRACTICE 🌟🌟🌟
-- Question 1581 : Customer Who Visited but Did Not Make Any Transactions
-- ===================================================================================


-- ========================================
--            TABLE INFO
-- ========================================
-- Table: Visits
-- +-----------+-------------+
-- | visit_id  | int         |
-- | customer_id | int       |
-- +-----------+-------------+
--
-- Table: Transactions
-- +----------------+----------+
-- | transaction_id | int      |
-- | visit_id       | int      |
-- | amount         | int      |
-- +----------------+----------+


-- ========================================
--            PROBLEM
-- ========================================
-- Find customers who visited but did not
-- make any transactions.
--
-- Return:
-- customer_id,
-- count_no_trans (number of such visits)


-- ========================================
--            SOLUTION
-- ========================================

SELECT
    v.customer_id,
    COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
    ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;


-- ========================================
--            END
-- ========================================
