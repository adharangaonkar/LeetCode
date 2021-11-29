/* Write your T-SQL query statement below */

WITH CTE1 as (
SELECT e.employee_id from employees e
    where e.employee_id not in (select s.employee_id from salaries s)
),
CTE2 as (
SELECT s.employee_id from salaries s
    where s.employee_id not in (select e.employee_id from employees e))
    


Select * from cte1
UNION
Select * from cte2