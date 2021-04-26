-- ****************************
-- Assignment 6 No 1 - IT2351 - Jennifer
-- call and store a proceude productCount
-- if count in products table >= 20
-- display a message, if < do display another message
-- ******************************
use jenns_guitar_shop;
drop procedure if exists productCount;
delimiter //
-- create procedure
create procedure productCount()
begin
	-- declare an integer variable to hold the output of the count
	declare productCount int;
    -- assign the count aggregate function to the variableproductCount
    select count(*) into productCount from products;
    -- if the product count is less than 20 print this message
    if countProduct < 20 then
		select 'The number of products is less than 20' as message;
        -- otherwise the count is => so print this message
        else select 'The number of products is greater than or equal to 20' as message;
    end if;    
end//
delimiter ;
call productCount();  
      
        
        
        