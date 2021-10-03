/* Write your T-SQL query statement below */

WITH CTE1 as (
SELECT p.product_id, sum(u.units) as total_units, sum(CAST((p.price* u.units) as  float)) as total_sale  from prices p
inner join unitssold u 
on p.product_id = u.product_id and u.purchase_date between p.[start_date] and p.[end_date]
group by p.product_id

)

SELECT product_id, CAST(total_sale/total_units as decimal(5,2)) as average_price from CTE1