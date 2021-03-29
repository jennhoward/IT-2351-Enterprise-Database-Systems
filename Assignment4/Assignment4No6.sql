-- ******************************************************************
-- Assignment4No6 IT2351 - Jennifer Howard
-- Create a View order_item_products 
-- that returns columns from orders, order_items, and products tables
-- ******************************************************************
use jenns_guitar_shop;
-- create view order_item_products as
-- order_id, order_date, tax_amount, ship_date, item_price, discount_amount, 
-- item_price, final_price, product_name, quantity -- , item_total
select order_id, order_date, tax_amount, ship_date, item_price, discount_amount, 
item_price - discount_amount as final_price, product_name, quantity
-- final_price * quantity as item_total
from orders join order_items using (order_id) join products using (product_id)
order by order_id, order_date, tax_amount, ship_date, product_name, item_price, 
discount_amount, final_price, quantity; -- item_total;