-- INNER JOIN 

SELECT *
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- Implicit Join Syntax 

SELECT *
FROM customers c, orders o
WHERE c.customer_id = o.customer_id
