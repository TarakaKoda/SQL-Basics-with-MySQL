SELECT order_id, oi.product_id, name, quantity, oi.unit_price AS "order items unit_price", quantity_in_stock, p.unit_price AS "products unit_price"
FROM order_items oi
JOIN sql_inventory.products p ON oi.product_id = p.product_id
ORDER BY order_id,  oi.product_id
