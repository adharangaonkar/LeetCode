/* Write your T-SQL query statement below */

WITH CTE1 as(
SELECT e2.employee_id, e1.age from employees e1, employees e2
where e1.reports_to = e2.employee_id)
,

CTE2 as (
SELECT employee_id, count(employee_id) as reports_count, round(((sum(age)* 1.0)/count(employee_id) ), 0) as average_age from CTE1
    group by employee_id
)

SELECT c2.employee_id, e.name, c2.reports_count, c2.average_age FROM CTE2 c2
join employees e on
e.employee_id = c2.employee_id
order by c2.employee_id

-- SELECT * FROM CTE1


-- select e1.employee_id, e1.name, count(e2.employee_id) reports_count, round(avg(e2.age * 1.0),0) average_age 
-- from Employees e1 join Employees e2
--             on e1.employee_id = e2.reports_to
-- group by e1.employee_id, e1.name
-- order by e1.employee_id
