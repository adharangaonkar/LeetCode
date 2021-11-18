# Write your MySQL query statement below

WITH CTE1 as (
SELECT player_id, event_date,
RANK() OVER (PARTITION BY player_id ORDER BY event_date) as date_rank
from Activity)

SELECT player_id, event_date as first_login from cte1
where date_rank = 1
