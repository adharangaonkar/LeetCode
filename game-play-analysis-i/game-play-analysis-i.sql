/* Write your T-SQL query statement below */
-- SELECT DISTINCT player_id, event_date as first_login from Activity

WITH CTE1 as 
(
    SELECT a.player_id, a.event_date, 
    ROW_NUMBER() OVER(PARTITION BY a.player_id ORDER BY a.event_date) as serial
    from Activity a
)

SELECT player_id, event_date as first_login FROM CTE1
where serial = 1