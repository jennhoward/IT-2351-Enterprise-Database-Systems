-- **********************************************
-- Assignment4No4 IT2351 Jenn Howard
-- from jenns_guitar_shop
-- What is the total quantity purchased
-- for each product in each category
-- **********************************************
use jenns_guitar_shop;
select if(grouping(category_name)=1, 'Grand Totals', category_name) as category_name,
if(grouping(product_name)=1, 'Category End', product_name) as product_name, quantity
-- if(grouping(quantity)=1, 'Sub Totals', quantity) as quantity,
from categories join products using (category_id) join order_items using (product_id)
group by category_name, product_name, quantity with rollup;




