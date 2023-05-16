SELECT order_id, first_name, last_name, c.customer_id
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
