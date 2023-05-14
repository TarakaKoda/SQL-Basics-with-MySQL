SELECT *
FROM customers
WHERE last_name REGEXP "field|mac|rose"
-- WHERE last_name REGEXP "^field|mac|rose"
-- WHERE last_name REGEXP "field$|mac|rose"