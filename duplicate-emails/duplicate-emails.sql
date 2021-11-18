# Write your MySQL query statement below
With CTE1 as (
SELECT Email ,count(email) as countEmail from person
group by Email
having countEmail >1)

SELECT Email from cte1