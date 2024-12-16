WITH order_count_rel AS (
	SELECT ot.customer_id , COUNT(ot.order_id) as number_of_orders
	FROM ordert ot
	GROUP BY customer_id
)
SELECT cust.customer_id, cust.customer_name, number_of_orders
FROM customer cust
JOIN order_count_rel ocr ON ocr.customer_id = cust.customer_id
ORDER BY number_of_orders DESC
