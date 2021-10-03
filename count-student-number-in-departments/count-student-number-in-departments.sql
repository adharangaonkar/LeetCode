/* Write your T-SQL query statement below */

SELECT dept_name, count(student_id) as student_number from student s
right outer join department d 
on s.dept_id = d.dept_id
group by dept_name
order by count(student_id) desc, dept_name asc