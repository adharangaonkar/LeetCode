/* Write your T-SQL query statement below */


SELECT s.id, s.name from Students s 
where s.department_id not in (Select d.id from departments d)