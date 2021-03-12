-- ***********************************
-- IT2351 Assignment 2 Part F - Jenn Howard
-- output all titles withh quantity > 1
-- ****************************************

use om;
select items.title, order_details.order_qty
from items join order_details 
on order_details.item_id = items.item_id
where order_qty > 1 order by title;







