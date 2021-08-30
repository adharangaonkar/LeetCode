/* Write your T-SQL query statement below */

select c1.Name as Employee from Employee c1, Employee c2
where c1.Salary > c2.Salary
AND c1.ManagerId = c2.Id