/* Write your T-SQL query statement below */

WITH CTE1 as (
    SELECT c.name , count(v.candidateId) as num_votes from Vote v
    inner join Candidate c on v.candidateId = c.id
    group by c.name
    
    )
    
SELECT TOP 1 name from CTE1   
ORDER BY num_votes desc