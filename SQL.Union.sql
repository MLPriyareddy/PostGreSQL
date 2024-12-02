Create table may2020(
			Day int,
			Customer varchar(15),
			Purchases int,
			amount_type varchar(15)
);

insert into july2020(Day,Customer,Purchases,amount_type) values
					(2,'G',2,'Credit'),
					(15,'H',1,'Cash'),
					(21,'I',7,'Cash');

select * from july2020;

Create table July2020(
			Day int,
			Customer varchar(15),
			Purchases int,
			amount_type varchar(15)
);
Create table union_output as
select * from may2020 UNION select * from june2020 UNION select * from july2020
Order by customer;

select * from union_output;