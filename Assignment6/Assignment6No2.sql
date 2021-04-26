-- **********************************************************
-- Assignment 6 No 2 - IT 2351 - Jennifer Howard
-- write script insertCategory to insert 'Guitars' into 
-- categories table with success and failed messages
-- **********************************************************
use jenns_guitar_shop;
drop procedure if exists insertCategory;
delimiter //
-- create procedure
create procedure insertCategory
(
-- create input variable
in category_name_param varchar(255),
-- create output variable
out update_category varchar(255)
)
	-- create general exception handler
	declare sql_error int default false;
    declare continue handler for sqlexception
		set sql_error = true;
    -- begin the update
    start transaction;
    alter table categories
    add update_category
    -- do the exception handling
    if sql_error = false then 
		set update count = 1; 
			select '1 row was inserted' as message; 
            commit;
        else set update = 0; 
			select 'Row was not inserted - duplicate 
				entry' as message; 
                rollback;
	end if;
end//
delimiter ;
call insertCategory('Guitars')



-- call insertCategory('Guitars');