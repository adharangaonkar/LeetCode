/* Write your T-SQL query statement below */

WITH CTE1 as(
SELECT product_id, (Width*Length*Height) as vol from products  
    )
SELECT w.name as warehouse_name, sum((c1.vol)*(w.units)) as volume from CTE1 c1
inner join warehouse w on
w.product_id = c1.product_id
group by w.name
             

   

-- SELECT* FROM CTE1