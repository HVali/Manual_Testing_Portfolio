
-- task_1
create database humanresources;
create database marketing;



-- task_2
drop database marketing;



-- task_3
create table employee (
Employee_id int auto_increment primary key,
First_name varchar(50),
Last_name varchar(50),
Salary int,
Joining_date date
);
select * from employee;

create table reward (
Employee_ref_id int,
date_reward date,
amount int
);

create table holidays (
holiday_name varchar(50),
holiday_date date
);



-- task_4
alter table employee add Birthdate date;
alter table employee add Departament varchar(50); 



-- task_5
alter table employee drop Birthdate;



-- task_6
drop table holidays;



-- task_7
insert into employee (First_name, Last_name, Salary, Joining_date, Departament) 
values ('Jerry', 'Kansxo', '6000000', '2019-01-15', 'IT'), ('Philip', 'Jose', '8900000', '2019-02-05', 'Banking'), ('Jhon', 'Abraham', '2000000', '2019-02-25', 'Insurance'),
('Michael', 'Mathew', '2200000', '2019-02-28', 'Finance'), ('Alex', 'chreketo', '4000000', '2019-05-10', 'IT'), ('Yohan', 'Soso', '1230000', '2019-06-20', 'Banking');


select * from employee;

update employee
set Salary = '1000000' 
Where Employee_id = '1';  

insert into reward (date_reward, amount)
values ('2019-05-11', 1000), ('2019-02-15', 5000), ('2019-04-22', 2000), ('2019-06-20', 8000);



-- task_8
select * from employee;
select * from reward;

alter table reward 
modify Employee_ref_id int auto_increment primary key;



-- task_9
select First_name, Last_name from employee;



-- task_10
select * from employee order by First_name; 

-- task_11
 select * from employee order by First_name asc, salary desc;



-- task_12
select * from employee
where First_name = 'Bob';



-- task_13
select * from employee
where salary > 3000000;



-- task_14
select * from employee
where Joining_date < '2019-03-01';



-- task_15
select count(*) from employee;



-- task_16
select avg(Salary) from employee;



-- task_17
update employee
set Salary = 8880000 
 where Last_name = 'Kansxo'; 
 
 
 
 -- task_18
delete from employee
where Departament = 'Banking';

select * from employee;



-- task_19
select * from employee order by Salary desc limit 2;

select * from employee;
select * from reward;


-- task_20 - foreign key
alter table reward
add foreign key (Employee_ref_id) references employee (Employee_id);


truncate table reward;
select * from reward;
insert into reward (date_reward, amount)
values ('2019-05-11', 1000), ('2019-02-15', 5000), ('2019-04-22', 2000), ('2019-06-20', 8000);
select * from reward;

alter table reward
add foreign key (Employee_ref_id) references employee (Employee_id);



truncate table employee;
insert into employee (First_name, Last_name, Salary, Joining_date, Departament) 
values ('Bob', 'Kinto', 1000000, '2019-01-20', 'Finance'), ('Jerry', 'Kansxo', '6000000', '2019-01-15', 'IT'), ('Philip', 'Jose', '8900000', '2019-02-05', 'Banking'), ('Jhon', 'Abraham', '2000000', '2019-02-25', 'Insurance'),
('Michael', 'Mathew', '2200000', '2019-02-28', 'Finance'), ('Alex', 'chreketo', '4000000', '2019-05-10', 'IT'), ('Yohan', 'Soso', '1230000', '2019-06-20', 'Banking');
select * from employee;


alter table reward
add foreign key (Employee_ref_id) references employee (Employee_id);


-- task_20 
select r.date_reward - e.Joining_date
from employee e inner join reward r on e.Employee_id = r.Employee_ref_id;


-- task_21
select e.First_name, r.amount
from employee e inner join reward r on e.Employee_id = r.Employee_ref_id
having amount > 2000;

-- task_22
select e.First_name, r.amount
from employee e inner join reward r on e.Employee_id = r.Employee_ref_id;



alter table reward 
modify Employee_ref_id int auto_increment;

alter table employee
modify Employee_id int auto_increment;



-- corectie!!!!!!!!!!!!!!!!!!!!!!

alter table reward
drop foreign key reward_ibfk_1;

alter table reward
drop primary key;

insert into reward (Employee_ref_id)
values (1), (2), (3), (1);

alter table reward 
modify Employee_ref_id int;

select * from reward;
select * from employee;

desc reward;
desc employee;


alter table reward
add foreign key (Employee_ref_id) references employee (Employee_id);


-- task_20 
select r.date_reward - e.Joining_date
from employee e inner join reward r on e.Employee_id = r.Employee_ref_id;

-- task_21
select e.First_name, r.amount
from employee e inner join reward r on e.Employee_id = r.Employee_ref_id
having amount > 2000;

-- task_22
select e.First_name, r.amount
from employee e inner join reward r on e.Employee_id = r.Employee_ref_id;



