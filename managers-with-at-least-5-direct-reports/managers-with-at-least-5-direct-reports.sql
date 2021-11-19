/* Write your T-SQL query statement below */

WITH CTE1 as(
SELECT managerId, count(managerId) as managerCount from Employee
group by managerId
having count(managerId) >= 5 
)

SELECT e.name from employee e
inner join cte1 
on 
cte1.managerId = e.id






