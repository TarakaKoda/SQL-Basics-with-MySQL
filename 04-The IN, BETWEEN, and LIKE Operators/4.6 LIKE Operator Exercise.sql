-- get the customer whose
--    addersses contain TRAIL or AVENUE

SELECT * 
FROM customers
WHERE address LIKE "%TRAIL%" OR address LIKE "%AVENUE%";
-- WHERE address NOT LIKE "%TRAIL%" OR address LIKE "%AVENUE%";

-- 	  phone number end with 9

SELECT *
FROM customers
WHERE phone LIKE "%9"
-- WHERE phone NOT LIKE "%9"
