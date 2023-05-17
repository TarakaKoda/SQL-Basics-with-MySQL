SELECT 
	c.customer_id,
	c.first_name,
    o.order_id,
    o.order_date,
    sh.name AS shipper
FROM orders o
-- JOIN customers c ON o.customer_id = c.customer_id
-- IF the column name is exact the same name across the tables than we can use the USING clause
JOIN customers c USING (customer_id)
LEFT JOIN shippers sh USING (shipper_id)
-- Whoever we can not usee this techinique with orders and statuses tables because they have different column names


