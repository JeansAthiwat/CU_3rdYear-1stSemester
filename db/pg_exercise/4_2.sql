SELECT 	
	postal_code, 
	count(customer_id) AS customer_count
FROM 	
	customer
GROUP BY 
	postal_code
HAVING count(customer_id) > 1;