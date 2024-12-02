/*DCL Commands*/

create user PS5 Password '12345'
select * from customertable;

grant select on customertable to ps5;
grant update on customertable to ps5;
grant insert on customertable to ps5;
grant delete on customertable to ps5;

insert into customertable(row_id,customer_name,state,country,price_of_the_product,order_id,email,contact)
Values (31,'AMY','Montana','USA',36.40,100,null,null)
delete from customertable
where row_id=27

update customertable
set email ='peter@peter.com'
where row_id=28

revoke delete on customertable from ps5;
revoke select on customertable from ps5;

/* No restricted access Grant all */

Grant all on customertable to PS5;
REVOKE ALL ON CUSTOMERTABLE FROM PS5;

/* REMOVE USER */
dROP USER PS5;
