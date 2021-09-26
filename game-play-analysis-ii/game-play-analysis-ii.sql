/* Write your T-SQL query statement below */
WITH CTE1 as 
(
    SELECT a.player_id, device_id, event_date,
    ROW_NUMBER() OVER(PARTITION BY a.player_id ORDER BY a.event_date) as serial
    from Activity a
)

SELECT player_id, device_id from CTE1
where serial = 1