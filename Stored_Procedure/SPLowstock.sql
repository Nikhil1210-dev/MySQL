-- 6. Creating a Stored Procedure for Low Stock Alerts
use tflecommerce;
delimiter \\
create procedure LowStockAlert(
in p_threshold int 
)
begin  select id, name, stock from products where stock <p_threshold;
end \\ 
call LowStockAlert(7);