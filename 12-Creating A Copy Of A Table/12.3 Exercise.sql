-- creating a copy table of invoices as invoices_archived
CREATE TABLE invoices_archived
SELECT
	c.name,
    i.invoice_id,
    i.number,
    invoice_total,
    payment_total,
    invoice_date,
    due_date,
    payment_date
FROM invoices i
JOIN clients c USING (client_id)
WHERE i.payment_date IS NOT NULL