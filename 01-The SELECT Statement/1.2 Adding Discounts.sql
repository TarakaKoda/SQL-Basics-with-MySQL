USE sql_store;

SELECT 
	first_name, 
	last_name,
	points,
	(points *0.5) AS "Discount Price"
FROM customers

