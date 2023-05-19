SELECT 
	MAX(invoice_total) AS highest,
    MIN(invoice_total) AS lowest,
    MAX(payment_date) AS latest_date,
	SUM(payment_total) AS total_ammount,
    AVG(payment_total) AS avg_ammount,
    SUM(invoice_total) AS total_sales,
    SUM(payment_total * 1.1) AS extra_payemts_total,
    COUNT(DISTINCT client_id) AS clients
FROM invoices
WHERE invoice_date BETWEEN "2019-01-01" AND "2019-06-30"