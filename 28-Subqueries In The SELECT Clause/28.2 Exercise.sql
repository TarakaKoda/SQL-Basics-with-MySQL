SELECT
	client_id,
    name,
    (SELECT  SUM(invoice_total)
    FROM invoices
    WHERE c.client_id = client_id) AS total_sale,
    (SELECT AVG(invoice_total)
    FROM invoices) AS average,
    (SELECT total_sale - average) AS difference
FROM clients c
GROUP BY client_id
HAVING total_sale IS NOT NULL AND difference > 0
ORDER BY difference DESC;


-- Same using JOINS

SELECT 
	c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales,
    (SELECT AVG(invoice_total)
    FROM invoices) AS average,
    SUM(invoice_total) - (SELECT average) AS difference
FROM clients c
LEFT JOIN invoices i USING (client_id)
GROUP BY client_id

