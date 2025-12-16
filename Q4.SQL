/*
Problem: Rising Temperature

Table: Weather
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
- id is the primary key.
- Each row has temperature data of a unique date (no duplicate dates).

Task:
Find the id of all days where today's temperature is higher than yesterday's.
(Yesterday = recordDate - 1 day)

Example:

Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+

Output:
+----+
| id |
+----+
| 2  |
| 4  |
+----+
Explanation:
- 2015-01-02 temperature (25) > previous day 2015-01-01 (10)
- 2015-01-04 temperature (30) > previous day 2015-01-03 (20)
*/

-- SOLUTION:
SELECT w1.id
FROM Weather w1
JOIN Weather w2
    ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;

-- NOTES:
-- We use self join because we need to compare each date with its previous date.
-- DATEDIFF(w1.recordDate, w2.recordDate) = 1 ensures w1 is exactly one day after w2.
-- Compare today's temperature (w1) with yesterday's (w2).
-- If w1.temperature > w2.temperature → include w1.id.
