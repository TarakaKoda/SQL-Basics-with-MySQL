SELECT *
FROM (
	SELECT 
		client_id,
		name,
		(SELECT SUM(invoice_total)
		FROM invoices i
		WHERE c.client_id = client_id) AS total_sales,
		(SELECT AVG(invoice_total)
		FROM invoices) AS average,
		(SELECT total_sales - average) AS difference
	FROM clients c
) AS sales_summary
WHERE total_sales IS NOT NULL AND difference > 0
GROUP BY client_id
HAVING difference < 700
LIMIT 1, 1