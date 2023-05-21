CREATE VIEW see_the_balance AS
SELECT 
	client_id,
    name,
    SUM(i.invoice_total - i.payment_total) AS balance
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY client_id, name
ORDER BY client_id

