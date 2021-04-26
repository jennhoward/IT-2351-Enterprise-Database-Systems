-- *******************************************************
-- Assignment 6 no 3 - IT2351 - Jennifer Howard
-- create function discount_price calculates the
-- discount price of an item in order_items table
-- *******************************************************
use jenns_guitar_shop;
delimiter //
create function discount_price(item_id_param int)
returns decimal(9, 2)
deterministic reads sql data
begin
	declare discount_price_var decimal(9, 2);
	select (item_price - discount_amount)
	into discount_price_var
	from order_items;
	return discount_price_var;
end//
delimiter ;
call discount_price(3);

    
    
    




