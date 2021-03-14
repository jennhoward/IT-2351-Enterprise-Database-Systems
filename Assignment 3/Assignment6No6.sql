-- ***********************************************
-- Assignment6No6 IT2351 Jenn Howard
-- create table: email, order_id, and order_total
-- ***********************************************
use jenns_guitar_shop;
select email_address, order_id from customers 
  join orders using (customer_id)
  join order_items using (order_id)
item_price * quantity as order_total
order by email_address, order_id, order_total
group by email_address, order_id, order_total;
