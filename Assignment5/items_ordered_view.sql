-- *******************************************************
-- Assignment5No3	IT2351	Jennifer Howard
-- this SQL script creates a view names items_ordered
-- using the guitar database that shows the name_item, 
-- product_name, item_price and quantity from order_items
-- for each item ordered
-- ********************************************************
use jenns_guitar_shop;
create view items_ordered as
select item_id as item_name, product_id as product_name,
	item_price, quantity
    from order_items
order by item_name, product_name, item_price, quantity;




