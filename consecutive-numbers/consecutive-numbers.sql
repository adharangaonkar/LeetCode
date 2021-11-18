/* Write your T-SQL query statement below */

WITH CTE1 as 
(
SELECT num,
LEAD(num, 1) OVER (ORDER BY id) AS lead,
LAG(num, 1) OVER (ORDER BY id) AS lag
FROM logs
)
Select distinct(num) as ConsecutiveNums from cte1
where num = lead and lag= num and lag=lead
