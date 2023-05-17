SELECT first_name AS full_names
FROM customers
UNION
SELECT name
FROM products