-- ************************************
-- Assignment7No3 - IT2351 - Jennifer HOward
--
-- **************************************
use ap;
drop procedure if exists test;
-- change the delimiter from ; to //
delimiter //
create procedure test()
begin
-- delete all line items for invoice_id 114 
-- from invoice_line_items
-- set up for commit/rollback
declare continue handler for sqlexception
set sql_error = true;
delete from invoice_line_items
where invoice_id in
(select invoice_id from invoices
where vendor_id = 114);
-- delete row with invoice_id 114
-- from invoices table
delete from invoices;
where invoice_id = 114;
-- set up for commit/rollback
declare continue handler for sqlexception
set sql_error = true;
start transaction;
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
