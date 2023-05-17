SELECT 
	c.first_name,
    c.customer_id,
    o.order_date
FROM customers c
NATURAL JOIN orders o