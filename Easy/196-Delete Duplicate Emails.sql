-- Problem: Delete Duplicate Emails
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/delete-duplicate-emails/

-- What this teaches:
--   - Using ROW_NUMBER() to assign unique numbers to rows within groups.
--   - PARTITION BY to group rows by a specific column (email).
--   - Subqueries to filter and delete duplicate records based on row numbers.

-- My Thought Process:
--   - Use ROW_NUMBER() to assign a number to each row within groups of the same email, ordered by id.
--   - Alias the row number as rn.
--   - In a subquery, select ids where rn > 1 to identify duplicates.
--   - Delete records from the Person table where ids match those duplicates.

with row_number as(select *,
row_number() over (partition by email order by id) as rn
from Person)

delete 
from Person
where id in (
    select id from row_number
    where rn>1
)