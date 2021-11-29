/* Write your T-SQL query statement below */

WITH CTE1 as 
(
    SELECT product_id, sum(unit) as total_units from orders
    where order_date > '2020-01-31' and order_date < '2020-03-01'
    group by product_id
    having sum(unit) >= 100
    )
    
SELECT  p.product_name, c.total_units as unit from CTE1 as c
inner join products p on
p.product_id = c.product_id
    