Create table customer(
					Row_Id serial primary key,
					Customer_Name varchar(250),
					State char(20) not null,
					country char(5) default 'USA',
					price_of_product numeric not null,
					Order_ID int not null,
					Foreign key (Order_ID) references Orders(Order_ID),
					Check(Price_of_product >=15)
					
	
);

Insert into Customertable(Customer_Name,State,country,price_of_the_product,Order_ID) Values
					('Antony','Cali',default,26.89,700)
					('Priyanka','Idaho',default,15.65,100),
					('Lakshmi','Texas',default,16.57,200),
					(Null,'Cali',default,25.87,300),
					('Scott','Munich','DE',18.55,400),
					('Peter','Frankfurt','DE',25.89,500);


create table Orders(
				Order_ID int Primary key,
				Department_Name varchar(250) not null unique,
				segment varchar(250)
);

Insert into Orders(Order_ID,Department_Name,Segment) Values
(700,'Bouquet',null);
				(100,'Furniture','Consumer'),
				(200,'Office supplies','Cosumer'),
				(300,'Technology','Corporate'),
				(400,'Retail',null)
				(500,'Stocks','Exchange')
				

Select * from view_customertable;

create view view_customertable as 
Select * from Customertable;

Truncate table customer;
Alter table customer rename to customertable;

Alter table customertable
Rename column price_of_product to price_of_the_product;

Alter table customertable
Alter column country type char(50);

Alter table customertable
Add column Email varchar(50);

Alter table customertable
ADD column contact bigint ;

Alter table customertable
Alter column contact 
SET default 11111111;

Update customertable
set contact=555555555
where row_id=27;

Select Customertable.customer_name,customertable.country, Orders.order_id,orders.department_name, orders.segment
From Customertable
Full Join orders
ON Customertable.Order_ID = Orders.Order_ID;

select count(customer_name)from customertable;

Select contact from customertable
where customer_name ='Peter';

select country, state, count(*) as no_of_countries from customertable group by country, state having state ='Cali';

Create view few_columns_customertable as
select row_id, customer_name, country from customertable;

select * from few_columns_customertable;

update few_columns_customertable
set customer_name='William'
where row_id = 26;

CREATE index customertable_index
on customertable (price_of_the_product);