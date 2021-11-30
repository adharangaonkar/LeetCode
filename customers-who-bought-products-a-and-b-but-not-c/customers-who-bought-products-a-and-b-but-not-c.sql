/* Write your T-SQL query statement below */

WITH CTE1 as (
SELECT customer_id, product_name,
CASE WHEN product_name = 'A' then 1 
else 0 end as prod_A,
CASE WHEN product_name = 'B' then 1 
else 0 end as prod_B,
CASE WHEN product_name = 'C' then 1 
else 0 end as prod_C,
CASE WHEN product_name = 'D' then 1 
else 0 end as prod_D    
    from orders
    ),
       
CTE2 as (    
SELECT CTE1.customer_id, customers.customer_name, sum(prod_A) as sum_A, sum(prod_B) as sum_B, sum(prod_C) as sum_C, sum(prod_D) as sum_D from CTE1
inner join customers on
    customers.customer_id = CTE1.customer_id
group by CTE1.customer_id, customers.customer_name 
    having sum(prod_A) >=1 and sum(prod_B) >= 1 and sum(prod_C) =0
)

SELECT customer_id, customer_name FROM CTE2
order by customer_id