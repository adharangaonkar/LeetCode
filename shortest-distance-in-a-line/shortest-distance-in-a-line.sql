/* Write your T-SQL query statement below */


WITH CTE1 as(
Select x,
LEAD(x,1) OVER(ORDER BY x) as x1
from point
    )

SELECT TOP 1 (x1-x) as shortest from CTE1 
where (x1-x) IS NOT NULL
ORDER BY shortest
     