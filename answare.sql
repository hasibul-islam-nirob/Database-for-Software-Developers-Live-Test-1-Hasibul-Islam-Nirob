
-- a
SELECT * FROM menuitem
ORDER BY menu_item_id DESC
LIMIT 20;


-- b
SELECT * FROM orders
WHERE status IN ('new', 'in-progress') AND DATE(order_date) = CURDATE()
ORDER BY order_date ASC;


-- c
DELETE FROM orders
WHERE status = 'completed'
AND order_date < NOW() - INTERVAL 15 DAY;
