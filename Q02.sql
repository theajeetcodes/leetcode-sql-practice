/*
Problem: Employees Earning More Than Their Managers

Table: Employee
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key. Each row contains employee details and the ID of their manager.

Task:
Find all employees who earn more than their managers. Return only employee names.
Employees without a manager (managerId = NULL) are ignored.

Example:

Employee table:
+----+-------+--------+-----------+
| id | name  | salary | managerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |
+----+-------+--------+-----------+

Output:
+----------+
| Employee |
+----------+
| Joe      |
+----------+
Explanation: Joe earns more than his manager.

*/

-- SOLUTION:
SELECT e.name AS Employee
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary;

-- NOTES:
-- Self join is used because Employee and Manager are in the same table.
-- Aliases: e = Employee, m = Manager to differentiate columns.
-- Compare employee salary with manager salary after join.
-- Employees without a manager (managerId = NULL) are ignored.
