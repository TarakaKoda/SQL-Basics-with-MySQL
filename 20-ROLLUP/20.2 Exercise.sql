SELECT 
	pm.name AS payment_method,
    SUM(p.amount) AS total_price
FROM payments p
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
GROUP BY pm.name WITH ROLLUP
