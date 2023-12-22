create database tanzeeldb;

use tanzeeldb;

create table employee(
	id int,
	empname varchar(255),
	salary int
);

insert into employee (id,empname,salary) 
values ('1','tanzeel','5000000');

select * from employee;