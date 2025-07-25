-- 2. Creating a Stored Procedure for User Login

use tflecommerce;
select * from tflecommerce.users;
delimiter //
create procedure userlogin(in pusername varchar(98),in spassword varchar(90))
begin
select  username,password from users where username=pusername
and password=spassword;
end //
call userlogin('nikhil n','nik780');
select * from users;



