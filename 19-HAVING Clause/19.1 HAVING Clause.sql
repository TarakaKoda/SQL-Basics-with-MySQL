SELECT
	client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(*) AS no_of_invoices
FROM invoices
GROUP BY client_id
HAVING total_sales > 600
ORDER BY total_sales DESC