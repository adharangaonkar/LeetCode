/* Write your T-SQL query statement below */
WITH CTE as 
(
SELECT e.Id, e.Name as Emp, d.Name as Dep, e.salary,
DENSE_RANK() OVER (PARTITION BY e.DepartmentId ORDER BY e.salary desc) as ranked_salary
    FROM employee e Inner join Department d on
e.DepartmentId = d.Id
)

SELECT Dep as Department, Emp as Employee, Salary FROM CTE
Where ranked_salary =1