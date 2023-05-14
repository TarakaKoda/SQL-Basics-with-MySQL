SELECT *
FROM customers
-- WHERE last_name LIKE "%field%"
WHERE last_name REGEXP "field" 
-- ^ means last_name(column) must begin with that  string 
-- $ means last_name(column) must ends with that string