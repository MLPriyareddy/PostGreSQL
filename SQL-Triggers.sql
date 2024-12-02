/* Triggers */

Create table employee(
			Name varchar(50),
			Department char (20),
			date_of_joined timestamp,
			status varchar(10),
			salary int,
			last_updated timestamp,
			location varchar(50)

);

insert into employee(Name,department,date_of_joined,status,salary,last_updated,location)values
					('A','HR','2024-11-28 15:38:58.896494-07','Active',25000,'2024-11-28 15:38:58.896494-07','Hyderabad'),
					('B','IT','2024-11-28 15:38:58.896494-07','Active',33000,'2024-11-28 15:38:58.896494-07','Hyderabad'),
					('C','HR','2024-11-28 15:38:58.896494-07','Active',45000,'2024-11-28 15:38:58.896494-07','Chennai'),
					('D','IT','2024-11-28 15:38:58.896494-07','Active',38000,'2024-11-28 15:38:58.896494-07','Bengaluru'),
					('E','IT','2024-11-28 15:38:58.896494-07','Paused',45000,'2024-11-28 15:38:58.896494-07','Karnataka'),
					('F','HR','2024-11-28 15:38:58.896494-07','Suspended',37000,'2024-11-28 15:38:58.896494-07','Mumbai');
select*from employee;

Create function last_updated_function()
returns trigger
as $$
begin
  	NEW.last_updated = now();
    return new;
End;
$$ language plpgsql;

CREATE Trigger status_updated_on
		Before update
		on employee
		For each row
Execute procedure last_updated_function()

update employee
set status ='Inactive'
where name = 'A';