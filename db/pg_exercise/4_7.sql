WITH prod_sold AS (
	SELECT product_id, SUM(ordered_quantity) as prod_sold_count
	FROM order_line
	GROUP BY product_id
)
SELECT prod.product_id, prod.product_description
FROM product prod
JOIN prod_sold ps ON prod.product_id = ps.product_id
WHERE prod_sold_count = (SELECT MAX(prod_sold_count) FROM prod_sold)