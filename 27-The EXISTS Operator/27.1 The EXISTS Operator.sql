-- Select clients that have invoices

-- Using EXISTS opeator
SELECT *
FROM clients c
WHERE EXISTS (
	SELECT *
    FROM invoices
    WHERE client_id = c.client_id
);


-- Using IN operator
SELECT *
FROM clients
WHERE client_id IN (
	SELECT client_id
    FROM invoices
);


-- Same thing using JOIN
SELECT
	DISTINCT c.client_id,
    name,
    address,
    city,
    state,
    phone
FROM clients c
LEFT JOIN invoices USING (client_id)
WHERE invoice_id IS NOT NULL;

