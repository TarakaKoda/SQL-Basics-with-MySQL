SELECT *
FROM products
WHERE product_id NOT IN (
	SElECT product_id
    FROM order_items
)