WITH ProductOrderCount AS (
SELECT order_line.product_id, COUNT(order_line.product_id) as order_count_by_product
FROM order_line
GROUP BY product_id
)
SELECT product.product_id, product.product_description
FROM product
JOIN productordercount ON product.product_id = productordercount.product_id
WHERE productordercount.order_count_by_product = (SELECT MAX(order_count_by_product) FROM productordercount)
ORDER BY product_id ASC