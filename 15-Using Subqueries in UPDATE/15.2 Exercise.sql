-- update orders table: comments as "Gold Customer" using customer_id of customers table where points > 3000
UPDATE orders
SET comments = "Gold Customer"
WHERE customer_id IN  
		(SELECT customer_id
        FROM customers
        WHERE points > 3000)