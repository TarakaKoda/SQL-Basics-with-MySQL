-- One of the differences between mysql and other rdbms are:
-- In MYSQL, We can sort the data with any column whether it is in the SELECT Clause or not

SELECT first_name, last_name
FROM customers
ORDER BY birth_date;


-- We can sort by the alias AS

SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY points, first_name
