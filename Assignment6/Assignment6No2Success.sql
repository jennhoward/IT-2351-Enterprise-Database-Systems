-- *********************************888888**********
-- Assignment 6 No 2 - IT 2351 - Jennifer Howard
-- write a script that creates and calls procedure
-- insertCategory name "Guitars" into categories table
-- successful display one message if not display another
-- **************************************************
use jenns_guitar_shop;
drop procedure if exists insertCategory;
delimiter //
create procedure insertCategory()
	if success then
		select '1 row was inserted' as message;
        else select 'Row was not inserted - 
			duplicate entry' as message;
	end if;
end//
delimiter ;
call productCount();




