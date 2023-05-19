SELECT
	c.customer_id,
    c.first_name,
    c.last_name,
	SUM(oi.unit_price * oi.quantity) AS total_price    
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE state = "VA"
GROUP BY 
	c.customer_id,
    c.first_name,
    c.last_name
HAVING total_price > 100


