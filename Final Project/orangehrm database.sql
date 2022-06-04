create database orangehrm;
use orangehrm;

create table departments(
department_code int primary key not null,
department_name varchar(55) not null,
department_manager varchar(55) not null
);

create table employees(
employee_id int primary key auto_increment,
first_name varchar(55) not null,
last_name varchar(55) not null,
date_of_birth date,
job_title varchar(55),
department int not null,
constraint fk_departments_department_code foreign key (department) references departments(department_code)
);

insert into departments (department_code, department_name, department_manager) values
(11, "Human Resources", "Janet Smith"), (12, "Accounting", "Mary Adams"), (13, "IT", "Michael Collins");

insert into employees (first_name, last_name, date_of_birth, job_title, department) values
("Katie", "Jones", "1983-08-20", "Financial administrator", 12), ("David", "Moore", "1976-07-19", "HR administrator", 11), ("Julie", "Reed", "1990-01-01", "Software engineer", 13),
("Susan", "Carter", "1980-09-12", "Accountant", 12), ("Bryan", "Cooper", "1978-11-25", "Engineer", 13), ("Emma", "Evans", "1985-03-09", "Payroll administrator", 11),
("Ryan", "White", "1987-12-20", "Network administrator", 13), ("Enrico", "Martinez", "1975-05-28", "Engineer", 13), ("Emily", "Parker", "1989-04-21", "Engineer", 13),
("Melanie", "Hall", "1983-01-05", "Accountant", 12), ("Justine", "Carter", "1983-03-22", "HR administrator", 11);
 
select * from departments;
select * from employees;

-- task_1: Select the last name of all employees;
select last_name from employees;

-- task_2: Select all the data of employees whose last name is "Carter";
select * from employees where last_name = 'Carter';

-- task_3: Select all the data of employees that works in department 11 or department 12;
select * from employees where department = 11 or department = 12;

-- task_4: Select the number of employees in each department (department_code and the number of employees);
select department, count(*) from employees
group by department;

-- task_5: Select all the data of employees, including each employee's department's data;
select * from employees e inner join departments d
on e.department = d.department_code;

-- task_6: Select de first name and last name of each employee, along with the name and manager of the employee's department;
select employees.first_name, last_name, departments.department_name as departments_name, department_manager
from employees inner join departments 
on employees.department = departments.department_code;

-- task_7: Select the first name, last name and date of birth of employees whose date of birth is greater than 1985-01-01;
select first_name, last_name, date_of_birth from employees 
where date_of_birth > '1985-01-01';

-- task_8: Select all the data of employees with date of birth between 1983-01-01 and 1983-12-31, ascending ordered;
select * from employees 
where date_of_birth between '1983-01-01' and '1983-12-31'
order by date_of_birth asc;

-- task_9: Select the names of departments with more than three employees;
select d.department_name from departments d
where 3 < (select count(*) from employees where department = d.department_code);

-- task_10: Select the first name and last name of all employees whose job title is "Engineer", and sort last name (in ascending order);
select first_name, last_name from employees
where job_title = 'Engineer'
order by last_name asc;

-- task_11: Select the first name, last name and date of birth of the youngest employee and of the oldest employee;
select first_name, last_name, date_of_birth from employees
where date_of_birth = (select max(date_of_birth) from employees)
 or date_of_birth = (select min(date_of_birth) from employees);

-- task_12: Select all the data of employees and all the data of employee's department, whose manager is "Mary Adams";
select * from employees inner join departments 
on employees.department = departments.department_code 
where departments.department_manager = 'Mary Adams';

-- task_13: Show all distinct job titles;
select (job_title) from employees
group by job_title;

-- task_14: Reassign all employees from the Accounting (code 12)  to Human Resources department (code 11);
update employees set department = 11 where department = 12;

select * from employees;

-- task_15: Delete from the table all employees in the IT department;
delete from employees
where department in (select department_code from departments where department_name = 'IT');
   