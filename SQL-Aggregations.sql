Create table department (
				Id int primary key,
				Name varchar(15)
);

Insert into department values(1,'IT'),(2,'HR');

Create table employees(
				ID serial primary key,
				Name varchar(25),
				salary real,
				departmentId int,
				foreign key(departmentId) references department(Id)
);

insert into employees (name,salary,departmentId)
Values				
						('Ravi',70000,1),
						('Ram',90000,1),
						('Priya',80000,2),
						('Mohan',75000,2),
						('Shipa',92000,1)
						('Lakshmi',78000,1);	

select * from department;
select * from employees;

select avg(salary) as avg_salary from employees;

/* Fetch the name of the employees whose salary is less than overall average salary*/

select name, salary from employees where salary < (select avg(Salary)as avg_salary from employees);

/* highest salary by department*/
select departmentId,max(salary) from employees group by departmentId
