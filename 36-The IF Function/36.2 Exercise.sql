SELECT 
	product_id,
    name,
    COUNT(order_id) AS orders,
    IF(
		COUNT(order_id) > 1, "Many times", "Once"
    ) AS frequency
FROM products
JOIN order_items USING (product_id)
GROUP BY product_id
