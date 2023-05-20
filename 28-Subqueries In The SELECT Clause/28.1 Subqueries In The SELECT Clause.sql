SELECT 
invoice_id,
invoice_total,
(SELECT AVG(invoice_total)
FROM invoices
) AS average,
invoice_total - (SELECT average) AS difference
FROM invoices
GROUP BY invoice_id
HAVING difference > 0
ORDER BY difference DESC
