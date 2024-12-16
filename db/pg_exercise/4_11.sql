SELECT cust.customer_id, cust.customer_name
FROM customer cust
WHERE cust.customer_id NOT IN (SELECT customer_id FROM ordert)
