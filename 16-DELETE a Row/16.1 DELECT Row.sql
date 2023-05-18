DELETE FROM invoices
WHERE invoice_id = 3;

-- Deleting a data using subquery
DELETE FROM invoices
WHERE client_id IN (
		SELECT client_id
        FROM customers
        WHERE name = "Myworks"
);

-- Inserting the data into the delected row
INSERT INTO invoices (invoice_id, number, client_id, invoice_total, payment_total, invoice_date, due_date, payment_date)
VALUES (3, "91-953-3396", 2, 154, invoice_total * 0.5, "2019-02-25", "2019-05-25", due_date)