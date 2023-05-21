SELECT 
	order_id,
    order_date,
    CASE 
		WHEN YEAR(order_date) = YEAR("2019-01-01") THEN "Active"
        WHEN YEAR(order_date) = YEAR("2019-01-01") - 1 THEN "Last Year"
        WHEN YEAR(order_date) < YEAR("2019-01-01") - 1 THEN "Archived"
        ELSE "Future"
        END AS category
FROM orders