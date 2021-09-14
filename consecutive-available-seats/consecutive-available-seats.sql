/* Write your T-SQL query statement below */
WITH CTE1 as (
    SELECT seat_id, free,
        lead(free) OVER(order BY seat_id) as next_value,
        lag(free) OVER(order BY seat_id) as prev_value
        from cinema
)


SELECT seat_id from cte1
where (free = 1 and next_value = 1) or (free=1 and prev_value =1) 