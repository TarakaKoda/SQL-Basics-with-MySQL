-- Do a crosss join between shippers and products
--      using the implicite syntax 
-- 		than using the explicite syntax

-- Implicite syntax
SELECT 
	sh.shipper_id,
    p.name
FROM shippers sh, products p
ORDER BY sh.shipper_id;


-- Explicite syntax
SELECT 
	sh.shipper_id,
	p.name
FROM shippers sh
CROSS JOIN products p
ORDER BY sh.shipper_id
