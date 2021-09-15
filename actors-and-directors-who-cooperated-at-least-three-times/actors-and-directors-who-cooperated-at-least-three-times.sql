/* Write your T-SQL query statement below */

WITH CTE1 as 
(
        Select a.actor_id, a.director_id,
        count(director_id) OVER (PARTITION BY a.actor_id, a.director_id order by director_id) as counting
        from ActorDirector a   
)



SELECT DISTINCT a.actor_id, a.director_id from CTE1 a
where counting >= 3