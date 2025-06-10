-- Problem: Find Duplicate Emails
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/duplicate-emails/

-- What this teaches:
--   - GROUP BY to count occurrences of a column.
--   - Using subqueries to isolate aggregated data.
--   - Filtering groups using WHERE (on alias columns in subqueries).

-- My Thought Process:
--   - Aggregate emails using COUNT in a subquery.
--   - Alias the count as Email_count.
--   - Filter those with Email_count > 1 in the outer query.

select email as Email from (
select email, count(email) as Email_count
from Person
group by email
) as sub_query
where email_count > 1