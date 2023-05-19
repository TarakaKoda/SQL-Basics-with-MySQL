SELECT 
	date,
	pm.name AS payment_method,
    SUM(p.amount) AS total_payment
FROM payments p
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id 
GROUP BY date,payment_method
ORDER BY date
 