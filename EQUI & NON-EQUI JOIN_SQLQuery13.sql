/*EQUI JOIN and NON- EQUI JOIN */


create database hexadb;
use  hexadb;

create table student (id INT, name varchar(255), class INT, city varchar(255) 
                       primary key(id));

insert into student Values (3, 'Hina',3, 'Delhi'),
                           (4, 'Megha',2, 'Delhi'),
						   (5, 'Gouri',2, 'Delhi');

create table record (id INT, class INT, city VARCHAR(255)
                     primary key(id));
insert into record Values (9,  3, 'Delhi'),
                           (10, 2, 'Delhi'),
						   (12, 2, 'Delhi');

SELECT student.name, student.id, record.class, record.city
FROM student, record
WHERE student.city = record.city;


SELECT student.name, student.id, record.class, record.city
FROM student
JOIN record
ON student.city = record.city;

SELECT student.name, record.id, record.city
FROM student, record
WHERE Student.id < Record.id ;





select * from student;
select * from record;



