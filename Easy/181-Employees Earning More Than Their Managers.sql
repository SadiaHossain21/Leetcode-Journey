-- Problem: Employees Earning More Than Their Managers
-- https://leetcode.com/problems/employees-earning-more-than-their-managers/
-- Difficulty: Easy

-- What this teaches:
--   - Self JOIN: The Employee table is joined to itself.
--   - Comparing each employee's salary with their manager's.
--   - Table aliasing to distinguish between employee and manager rows.

-- My Thought Process:
--   - Join the Employee table to itself using managerId.
--   - Filter where employee's salary is greater than their manager’s.
--   - Only return employee names that meet this condition.

SELECT employee.name AS Employee
FROM Employee AS employee
JOIN Employee AS manager
  ON employee.managerId = manager.id
WHERE employee.salary > manager.salary;


SELECT employee.name AS Employee
FROM Employee employee
JOIN Employee manager
ON employee.managerId = manager.Id
WHERE employee.salary > manager.salary;
