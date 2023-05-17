-- What if we have multiple column in our join conditons take the same exaple of 09.5.1 Composite primary key

SELECT *
FROM order_items oi
-- JOIN order_item_notes oin ON oi.order_id = oin.order_id AND oi.product_id = oin.product_id
JOIN order_item_notes oin USING (order_id, product_id)

