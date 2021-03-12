-- **************************************************************
-- IT2351 Assignment 2 Part 2E - Jenn Howard
-- Update previous Query to see customer name vs customer_id 
-- replaced customer_id with customer_first_name, customer_last_name
-- plus using a (third) join to customers
-- Print out the columns in new speciifed order
-- **************************************************************

use om;
select customers.customer_first_name, customers.customer_last_name, 
orders.order_date, items.title, order_details.order_qty
from orders
join order_details
on orders.order_id = order_details.order_id
join items on order_detals.item_id = items.item_id
join customers on customer.customer_id = orders.customer_id
order by customers.customer_first_name, customers.customer_last_name, 
orders.order_date, items.title, order_details.order_qty;





