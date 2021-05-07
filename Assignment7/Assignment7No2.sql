-- ************************************
-- Assignment7No2 - IT2351 - Jenn Howard
-- replace fmr company with new company
-- ***************************************
use ap;
drop procedure if exists test;
-- change the delimiter from ; to //
delimiter //
create procedure test()
begin
-- UPS bought by FedExCorp new company name FedUP
-- add a new vender (rename a vendor)
-- set up for commit/rollback
declare continue handler for sqlexception
set sql_error = true;
start transaction;
insert into vendors values
(5, 'FedUP', 'Harbor Cove', 
'123 Circle Drive', 'Cleveland',
'OH', '44106', '216-317-0909',
'Blow', 'Joe', 0002);
-- update the company name on all invoice for new vender
update invoices 
set terms_id = 1
where vendor_id =
(select vendor_id from invoices
where vendor_id = 5);
-- delete a (the) former vendor
delete from vendors
where vendor_id = 5;
delete from invoices
where vendor_id = 5;
-- after update to vendor_id col
-- in invoices table
-- if successful commit change
if sql_error = false 
then commit; select 
'transaction committed';
else rollback; select 
'transaction rolled back';
end if;
end//
-- else rollback changes
end
-- change delimiter back to ;
delimiter ;
call test();
-- I couldn'nt locate the book answers 
