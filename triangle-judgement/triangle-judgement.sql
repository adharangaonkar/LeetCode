/* Write your T-SQL query statement below */


SELECT x, y, z,
CASE WHEN (x+y)>z and (y+z) >x and (x+z) > y then 'Yes'
ELSE 'No'
END AS triangle
from triangle
