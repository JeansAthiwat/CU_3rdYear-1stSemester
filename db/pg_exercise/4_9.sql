WITH customer_order as (
	SELECT customer_id, order_date 
	from ordert
	WHERE (order_date > '2020-01-10' and order_date < '2020-01-15')
)
SELECT DISTINCT cust.customer_id , cust.customer_name 
FROM customer cust
JOIN customer_order co ON cust.customer_id = co.customer_id

