/* Write your T-SQL query statement below */




SELECT s.name from salesperson s 
where s.sales_id NOT IN
(
    SELECT o.sales_id as sales_id from orders o
    left outer join company c on
    o.com_id = c.com_id
    where c.name = 'RED'
)