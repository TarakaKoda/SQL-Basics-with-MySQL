SELECT 
	client_id,
    SUM(invoice_total) AS total
FROM invoices
GROUP BY client_id WITH ROLLUP