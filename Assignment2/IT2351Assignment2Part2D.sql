-- **************************************************************
-- IT2351 Assignment 2 Part 2D - Jenn Howard
-- Update previous Query to see title vs item_id
-- replaced item_id in select with artist 
-- plus using a (second) join to items
-- Print out the columns in new speciifed order
-- **************************************************************

use om;
select orders.customer_id, orders.order_date, 
items.title, order_details.order_qty
from orders
join order_details
on orders.order_id = order_details.order_id
join items on order_details.item_id = items.item_id
order by orders.customer_id, orders.order_date,
items.artist, order_details.order_qty;