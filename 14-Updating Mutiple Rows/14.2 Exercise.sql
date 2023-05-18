-- Write a SQL statement 
-- 	  give any customer born before 1990
--    50 extra points

UPDATE customers
SET points = points + 50 
WHERE birth_date < "1990-01-01"