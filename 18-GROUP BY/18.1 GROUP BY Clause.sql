SELECT 
	client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
WHERE invoice_date >= "2019-06-01"
GROUP BY client_id
ORDER BY total_sales DESC
