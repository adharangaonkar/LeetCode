/* Write your T-SQL query statement below */


WITH CTE1 as (
 SELECT p.project_id, sum(e.experience_years) as a, count(e.experience_years) as b
 from Project p
 inner join Employee e 
 on e.employee_id = p.employee_id
 GROUP BY p.project_id
)
, CTE2 as(
SELECT c.project_id, (CAST(a AS DECIMAL(7,2))/CAST(b AS DECIMAL(7,2))) as average FROM CTE1 c)


SELECT project_id, CAST(average AS DECIMAL(7,2)) as average_years FROM CTE2