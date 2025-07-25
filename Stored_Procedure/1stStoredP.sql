
-- 1. Creating a Stored Procedure for User Registration
use tflecommerce;
SELECT * FROM tflecommerce.users;
desc users;
delimiter ++
create procedure userregistration(in pusername varchar(50),in npassword varchar(255),in eemail varchar(100),in aaddress varchar(255))
begin 
insert into users(username, password, email, address) value(pusername ,npassword ,eemail, aaddress);
end 
++
call userregistration('nikhil n','nik7890','nikhil21@gmail.com','pune');
set sql_safe_updates=false;
select *from users;