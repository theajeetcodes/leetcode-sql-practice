/*
Problem: Combine Two Tables - Person Address

Tables:

1. Person
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| personId    | int     |
| lastName    | varchar |
| firstName   | varchar |
+-------------+---------+
personId is the primary key. Contains first and last names of persons.

2. Address
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| personId    | int     |
| city        | varchar |
| state       | varchar |
+-------------+---------+
Each row contains the city and state of a person identified by personId.

Task:
Report firstName, lastName, city, and state of each person in the Person table.
If a person's address is not present, return NULL for city and state.

Example:

Person table:
+----------+----------+-----------+
| personId | lastName | firstName |
+----------+----------+-----------+
| 1        | Wang     | Allen     |
| 2        | Alice    | Bob       |
+----------+----------+-----------+

Address table:
+-----------+----------+---------------+------------+
| addressId | personId | city          | state      |
+-----------+----------+---------------+------------+
| 1         | 2        | New York City | New York   |
| 2         | 3        | Leetcode      | California |
+-----------+----------+---------------+------------+

Output:
+-----------+----------+---------------+----------+
| firstName | lastName | city          | state    |
+-----------+----------+---------------+----------+
| Allen     | Wang     | Null          | Null     |
| Bob       | Alice    | New York City | New York |
+-----------+----------+---------------+----------+
*/

-- SOLUTION:
SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId;

-- NOTES:
-- LEFT JOIN ensures all persons are included even if address is missing.
-- If a person's address is missing, city and state will be NULL.
-- p = alias for Person table, a = alias for Address table.
-- LEFT JOIN is used when main table (Person) ka saara data chahiye.
-- Approach: Include all Person records and match with Address if exists.
