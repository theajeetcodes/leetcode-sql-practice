/*
Problem: Find Duplicate Emails

Table: Person
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key (unique for each row).
Each row stores a user's email.
Emails are guaranteed to be lowercase and NOT NULL.

Task:
Return all email values that appear more than once in the Person table.

Example:

Person table:
+----+---------+
| id | email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+

Output:
+---------+
| Email   |
+---------+
| a@b.com |
+---------+
Explanation:
Email "a@b.com" appears more than once, so it is a duplicate.
*/

-- SOLUTION:
SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;

-- NOTES:
-- GROUP BY collects all rows with the same email.
-- COUNT(email) tells how many times each email appears.
-- HAVING is used to filter groups after grouping.
-- Emails with count > 1 are duplicates.
-- Only the duplicate email values are returned.
