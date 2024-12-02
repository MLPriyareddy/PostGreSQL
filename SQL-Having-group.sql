create table table1(
				Id int,
				name varchar(100),
				age int,
				marks numeric(5,2),
				gender varchar(15)

);
drop table table1;
select*from table1
order by marks desc;
truncate table table1;
select count(*) as total_girls from table1 where gender = 'female';
select count(*) as nooffemales from table1 where gender='male';
select avg(marks) from table1 where gender ='female';

select name,marks,gender from table1 where gender ='male' and marks >
(select avg(marks) from table1 where gender ='female');

select count(*) bygender,gender from table1 group by gender;
select gender,marks from table1 group by gender,marks having marks > 85;

select * from table1 where gender='male' and marks >
(select avg(marks) from table1 where gender ='female');

select marks as nth_highest_marks from table1 as t1 where 
3 = (select count(*) from table1 as t2
where t1.marks < t2.marks
)

select count(*) as bygender, gender from table1 where marks >85 group by gender;