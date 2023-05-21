-- If the view doesn't have these in their query we can perform UPDATE, INSERT, DELETE to the view
-- DISTINCT
-- Aggregate Functions (MIN, MAX, SUM, AVG, COUNT)
-- GROUP BY / HAVING Clause
-- UNION

CREATE OR REPLACE VIEW invoices_with_balance AS 
SELECT 
	invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total AS balance,
    invoice_date,
    due_date,
    payment_date
FROM invoices