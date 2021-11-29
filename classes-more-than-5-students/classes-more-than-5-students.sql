/* Write your T-SQL query statement below */

WITH CTE1 as
(
SELECT class, count(student) as cnt from courses
group by class
having count(student) >= 5)

SELECT class from CTE1