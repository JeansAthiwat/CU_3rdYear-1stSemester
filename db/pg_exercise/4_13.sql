WITH product_sum AS (
	SELECT product_id, (ordered_quantity * standard_price) as total_of_item
	FROM order_line NATURAL JOIN product
	WHERE order_id = 3
)
SELECT SUM(total_of_item) AS total_payment
FROM product_sum

