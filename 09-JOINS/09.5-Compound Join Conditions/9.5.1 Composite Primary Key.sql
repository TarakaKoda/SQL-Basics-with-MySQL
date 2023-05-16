SELECT *
FROM order_items oi
JOIN order_item_notes oin 
ON oi.order_id = oin.order_id 
AND oi.order_id = oin.note_id