-- ********************************************
-- Assignment 6 No 4 - IT2351 - Jennifer Howard
-- create an EVENT that would run yearly to
-- determine products not ordered this year
-- ********************************************
use jenns_guitar_shop;
delimiter //
create event not_ordered_in_a_year
starts '2020-01-01'
on schedule at now() - interval 1 year
do begin
	select from order_items where 
    product_id not in order_id < now() - interval 1 year;
	order by product_id
end//
delimiter ;

