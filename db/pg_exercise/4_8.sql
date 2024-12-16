WITH customer_order as (
	SELECT customer_id , COUNT(order_id) as order_count
	FROM ordert
	GROUP BY customer_id
)
SELECT cust.customer_id, customer_name, order_count
FROM customer cust
JOIN customer_order co ON co.customer_id = cust.customer_id
ORDER BY order_count DESC
LIMIT 3