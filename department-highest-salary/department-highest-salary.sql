/* Write your T-SQL query statement below */

WITH CTE1 as 
(
SELECT d.name as department, e.name as employee, e.salary,
RANK() OVER(PARTITION BY d.name ORDER BY Salary desc) as salary_rank
from employee e
inner join department d 
on d.id = e.departmentId 
    
    
)


SELECT department, employee, salary FROM cte1
where salary_rank =1