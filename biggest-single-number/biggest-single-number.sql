/* Write your T-SQL query statement below */


SELECT max(num) as num from(
SELECT num, count(num) as cnt from mynumbers
group by num
having count(num) =1) a