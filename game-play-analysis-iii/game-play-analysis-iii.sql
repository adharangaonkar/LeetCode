/* Write your T-SQL query statement below */
SELECT a.player_id, a.event_date, 
    SUM(a.games_played) OVER(PARTITION BY a.player_id ORDER BY a.event_date ) as games_played_so_far 
    from Activity a