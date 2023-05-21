CREATE VIEW total_sales AS
SELECT 
	client_id,
    name,
    SUM(invoice_total) AS total_sales
FROM clients
JOIN invoices USING (client_id)
GROUP BY client_id, name
ORDER BY client_id