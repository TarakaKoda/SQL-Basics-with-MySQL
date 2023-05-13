-- Exercise: 
-- Return all the products
-- name
-- unit price
-- new price (unit price * 1.1 )

-- Solution:
SELECT 
	name,
    unit_price AS "unit price",
    unit_price * 1.1 AS "new price"
FROM products