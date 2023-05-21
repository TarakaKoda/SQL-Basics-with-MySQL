-- Using IFNULL function
SELECT 
	order_id,
    IFNULL(shipper_id, "Not Assigned") AS shipper
FROM orders
ORDER BY shipper;

-- Using COALESCE function
SELECT 
	order_id,
    COALESCE(shipper_id, comments, "Not Assigned") AS shipper
FROM orders