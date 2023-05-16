SELECT p.date, p.invoice_id, p.amount, c.name, pm.name AS "payment method"
FROM payments p
JOIN clients c ON c.client_id = p.client_id
JOIN payment_methods pm ON pm.payment_method_id = p.payment_method
ORDER BY p.date