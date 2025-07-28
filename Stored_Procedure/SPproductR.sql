-- 7. Creating a Stored Procedure for Product Review  
use tflecommerce;
drop procedure if exists AddProductReview;
delimiter \\
create procedure AddProductReview(
in p_product_id int,
in p_user_id int,
in p_rating int,
in p_review text 
)
begin insert into review (product_id,user_is,rating,review_text)
values (p_product_id,p_user_id,p_rating,p_review);
end \\
call AddProductReview(1,2,5,'Great product!');
