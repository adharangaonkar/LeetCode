/* Write your T-SQL query statement below */

WITH CTE1 as (
    Select p.project_id, count(e.employee_id) as counts from project p
    inner join employee e on e.employee_id = p.employee_id
    group by p.project_id
    ),
    
 CTE2 as (
 select project_id, counts,
     DENSE_RANK() OVER(order by counts desc) as ranks
     from CTE1
 
 )   

SELECT project_id FROM CTE2
where ranks =1