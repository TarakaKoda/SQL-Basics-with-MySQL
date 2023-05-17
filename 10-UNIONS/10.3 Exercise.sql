SELECT
	c.customer_id,
    first_name,
    points,
    "Gold" AS type
FROM customers c
WHERE points > 3000
UNION
SELECT
	customer_id,
    first_name,
    points,
    "Silver" AS type
FROM customers c
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT 
	customer_id,
    first_name,
    points,
    "Bronze" AS type
FROM customers c
WHERE points <= 2000
ORDER BY first_name