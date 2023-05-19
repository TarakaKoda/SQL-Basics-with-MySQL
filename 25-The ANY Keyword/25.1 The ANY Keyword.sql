-- Select clients with aleast two invoices

SELECT *
FROM clients
WHERE client_id IN (
	SELECT  client_id
	FROM invoices 
	GROUP BY client_id
	HAVING COUNT(*) >= 2
);

-- ANY keyword is equal to IN keyword
SELECT *
FROM clients
WHERE client_id = ANY (
	SELECT client_id
	FROM invoices
	GROUP BY client_id
	HAVING COUNT(*) >= 2
)


