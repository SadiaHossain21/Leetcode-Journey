-- Problem: Combine Two Tables
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/combine-two-tables/

Select firstName, lastName, city, state
From Person person
Left Join Address address
On person.personId = address.personId