-- Find the products that have never been ordered

-- Using EXISTS operator
SELECT *
FROM products p
WHERE NOT EXISTS (
	SELECT *
    FROM order_items
    WHERE product_id = p.product_id
);

-- Using IN operator
SELECT *
FROM products p
WHERE product_id NOT IN (
	SELECT product_id
    FROM order_items
);

-- Using JOIN
SELECT *
FROM products
LEFT JOIN order_items USING (product_id)
WHERE order_id IS NULL

