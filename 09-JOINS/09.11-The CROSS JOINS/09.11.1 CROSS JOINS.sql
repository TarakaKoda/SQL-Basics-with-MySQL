-- Explicite syntax
SELECT 
	c.first_name,
    p.name
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name;


-- implicite syntax
SELECT 
	c.first_name,
    p.name
FROM customers c, products p
ORDER BY c.first_name