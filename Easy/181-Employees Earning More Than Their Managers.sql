-- Problem: Employees Earning More Than Their Managers
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/

SELECT employee.name AS Employee
FROM Employee employee
JOIN Employee manager
ON employee.managerId = manager.Id
WHERE employee.salary > manager.salary;