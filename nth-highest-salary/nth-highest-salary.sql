CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT
    DISTINCT(Salary) as getNthHighestSalary
FROM
    Employee
ORDER BY
    getNthHighestSalary DESC
OFFSET @N-1 ROWS 
FETCH NEXT 1 ROWS ONLY
    );
END