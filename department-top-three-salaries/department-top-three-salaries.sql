/* Write your T-SQL query statement below */


WITH CTE1 AS( 
SELECT d.name as Department, 
    e.Name as Employee, 
    e.Salary, 
    DENSE_RANK() OVER(PARTITION BY d.Name ORDER BY e.Salary desc) as rnk 
    FROM Employee e
    inner join Department d 
    on (e.DepartmentId = d.Id))


SELECT Department, Employee, Salary FROM CTE1 where rnk <=3