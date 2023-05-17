INSERT INTO orders (customer_id, order_date, status)
VALUES (1,"2019-03-07",1);
INSERT INTO order_items 
VALUES (LAST_INSERT_ID(), 2, 1, 1.5),
	   (LAST_INSERT_ID(),3,2,2.5)

