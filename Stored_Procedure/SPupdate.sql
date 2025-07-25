-- 3. Creating a Stored Procedure for Updating User Information
use tflecommerce;
select * from tflecommerce.users;
delimiter //
create procedure updateinfo( in newusername varchar (78),in oldusername varchar(89),in newaddress varchar(90))
begin
update users set username=newusername ,address=newaddress  where username=oldusername ;
end
//
call updateinfo('nnnn','nikhil n','delhi');
select * from users;
