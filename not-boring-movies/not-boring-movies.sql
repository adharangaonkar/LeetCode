/* Write your T-SQL query statement below */
WITH CTE1 as
(
    SELECT c.id, c.movie, c.description, c.rating, 
    CASE 
    WHEN id%2 =1 then 'odd'
    else 'even' 
    END AS odd_even
    from Cinema c
)

SELECT c.id, c.movie, c.description, c.rating FROM CTE1 c
where c.odd_even = 'odd' and c.description <> 'boring'
ORDER BY c.rating desc