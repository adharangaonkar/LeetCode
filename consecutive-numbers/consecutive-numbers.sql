/* Write your T-SQL query statement below */
WITH CTE1 as (
    SELECT Id, 
    Num,
     LEAD(Num, 1) OVER (ORDER BY Id) AS NextNum,
     LEAD(Num, 2) OVER (ORDER BY Id) AS SecondNextNum
      FROM Logs
)
,CTE2 as
(
    SELECT CASE
    WHEN Num = NextNum and NextNum = SecondNextNum THEN Num
    ELSE NULL
    END AS ConsecutiveNums
    FROM CTE1
)
SELECT Distinct ConsecutiveNums FROM CTE2
where ConsecutiveNums IS NOT NULL