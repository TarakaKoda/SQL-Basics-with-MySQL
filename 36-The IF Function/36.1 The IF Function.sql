-- Using UNION operator
SELECT
	order_id,
    "ACTIVE" AS category
FROM orders
WHERE YEAR(order_date) = YEAR("2019-01-01")
UNION 
SELECT
	order_id,
    "ARCHIVED" AS category
FROM orders
WHERE NOT YEAR(order_date) = YEAR("2019-01-01");

-- Using IF funcion
SELECT 
	order_id,
    order_date,
    IF(YEAR(order_date) = YEAR("2019-01-01"), "Active", "Archived") AS category
FROM orders
    
