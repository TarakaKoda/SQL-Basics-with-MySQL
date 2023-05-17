SELECT 
	p.date,
    c.name AS client,
    p.amount,
    pm.name
FROM payments p
JOIN clients c USING (client_id)
JOIN payment_methods pm ON pm.payment_method_id = p.payment_method
ORDER BY p.date
