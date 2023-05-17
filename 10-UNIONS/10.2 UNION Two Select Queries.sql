SELECT 
	o.order_id,
    o.order_date,
    "Active" AS status
FROM orders o
WHERE o.order_date >= "2019-01-01" 
UNION
SELECT 
	o.order_id,
    o.order_date,
    "Archive" AS status
FROM orders o
WHERE o.order_date < "2019-01-01"
ORDER BY order_date;