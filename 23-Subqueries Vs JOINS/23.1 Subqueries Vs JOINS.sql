-- Find client without invoices
SELECT *
FROM clients 
WHERE client_id NOT IN (
	SELECT DISTINCT client_id
    FROM invoices
);

-- USING JOINS to do the same thing
SELECT *
FROM clients
LEFT JOIN invoices USING (client_id)
WHERE invoice_id IS NULL