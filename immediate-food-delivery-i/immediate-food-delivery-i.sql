/* Write your T-SQL query statement below */


WITH CTE1 as (
	SELECT delivery_id, 
	CASE WHEN order_date =  customer_pref_delivery_date then 'imm'
	else 'sch' end as  delivery_priority
	from delivery
	)
,
CTE2 as 
(
	SELECT top 1
	(
		SELECT count(*) from CTE1
		where delivery_priority = 'imm' )  as imm,
	(
		SELECT count(*) from CTE1
		 ) 
		as all_del

		from CTE1
)

SELECT cast( cast(imm * 100 as float)/ cast(all_del as float) as decimal(5,2)) as immediate_percentage FROM CTE2
