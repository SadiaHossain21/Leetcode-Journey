-- Problem: Find Duplicate Emails
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/customers-who-never-order/

-- What this teaches:
--   - Using proper join

-- My Thought Process:
--   - Left join with orders table
--   - Getting all the list of customers with customer id
--   - Then filtering those whose customer id is null

Select name as Customers from Customers c
left join Orders o
on c.id = o.customerId
where o.customerId is null;