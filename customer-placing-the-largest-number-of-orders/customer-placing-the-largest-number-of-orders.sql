# Write your MySQL query statement below

WITH CTE1 as (
    
    SELECT customer_number,
    DENSE_RANK() OVER(ORDER BY count(customer_number) desc) as cust_rnk
    from Orders 
        GROUP BY customer_number
)    

SELECT customer_number FROM CTE1
where cust_rnk = 1
