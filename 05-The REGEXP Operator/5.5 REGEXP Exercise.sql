--  Get the customers whose 
--      first names are ELKA or AMBUR

SELECT * 
FROM customers
WHERE first_name REGEXP "elaka|ambur";

--      last names end with EY or On

SELECT * 
FROM customers
WHERE last_name REGEXP "ey$|on$";

--      last names starts wirth MY or contains SE 

SELECT * 
FROM customers
WHERE last_name REGEXP "^my|se";

--      last names contains B followed by R or uninstall

SELECT * 
FROM customers
WHERE last_name REGEXP "b[ru]" 
-- WHERE last_name REGEXP "br|bu"

