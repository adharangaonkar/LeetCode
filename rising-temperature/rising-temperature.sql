/* Write your T-SQL query statement below */


SELECT w1.Id 
FROM   Weather w1 
       JOIN Weather AS w2
         ON w1.recordDate  = dateadd(day,1,w2.recordDate)
     WHERE w1.Temperature > w2.Temperature 