Create table name_table (
				Name varchar(25) primary key,
				Course varchar(25)
);

Insert into name_table(Name,course) values
				('A','Tableau'),
				('B','R'),
				('C','Hadoop'),
				('D','Tableau');

Create table age_table (
				Name varchar(25),
				Age int not null,
				Foreign key(Name) references name_table(name)
);


Insert into age_table(Name, age) values
					('B',30),
					('C',25),
					('D',28),
					('E',32);
alter table age_table
drop constraint age_table_name_fkey;

Select name_table.name, course, age_table.name, age from name_table
inner join age_table
ON name_table.name = age_table.name;
where name_table.name is null;