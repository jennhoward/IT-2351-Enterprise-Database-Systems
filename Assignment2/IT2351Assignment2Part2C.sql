-- *********************************************************
-- IT2351 Assignment 2Part 2 C - Jenn Howard
-- Select all 4 columns from the 2 tables using a join
-- Print out the columns in speciifed order
-- *********************************************************

use om;
select customer_id, order_date, item_id, order_qty
from orders
join order_details
on orders.order_id = order_details.order_id
order by customer_id, order_date, item_id, order_qty;