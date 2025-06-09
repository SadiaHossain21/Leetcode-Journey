--  Problem: Combine Two Tables
--  https://leetcode.com/problems/combine-two-tables/
--  Difficulty: Easy

--  What this teaches:
--   - LEFT JOIN: Get all records from Person, even if there’s no match in Address.
--   - Joining using a shared key (personId).
--   - Combining data from multiple tables safely.

--  My Thought Process:
--   - Use LEFT JOIN because not all persons might have an address.
--   - Match on personId, then select the relevant columns.

SELECT firstName, lastName, city, state
FROM Person AS person
LEFT JOIN Address AS address ON person.personId = address.personId;
