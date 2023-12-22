use studentdb; 
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL UNIQUE,
   NAME VARCHAR (20),
   AGE INT,
   ADDRESS CHAR (25),
   SALARY INT check (salary<100000)
   PRIMARY KEY (ID)
);
INSERT INTO CUSTOMERS(ID,NAME, AGE,ADDRESS,SALARY)
VALUES
(1, 'Ramesh', 32, 'Ahmedabad', 2000),
(2, 'Khilan', 25, 'Delhi', 1500),
(3, 'Kaushik', 23, 'Kota', 2000),
(4, 'Chaitali', 25, 'Mumbai', 6500),
(5, 'Hardik', 27, 'Bhopal', 8500), 
(6, 'Komal', 22, 'Hyderabad', 4500),
(7, 'Muffy', 24, 'Indore', 10000);

NOT NULL /* Constraint- if you put NUL value in NUL align table thn it will show a error */
UNIQUE  /*  Constraint-  it is used for unique ID so that same number of ID will not repeat */
check  /*   Constraint- it will check and show error if we insert more salary than 100000 */


select ID,name from customers;/* it will give ID and name column both*/

select distinct age from customers;/*shows the  only age column with data in it and also it will not repeat the same data */

SELECT * FROM CUSTOMERS ORDER BY salary;/* shows the Ascending order of data*/

select * from CUSTOMERS where name = 'Ramesh';/* where clause is used for the condition that is given*/

select ID from CUSTOMERS where age = 32;/* it select only that ID which is equal to age= 32*/

SELECT * FROM CUSTOMERS ORDER BY salary desc;/* shows the descending order of data*/

select* from CUSTOMERS where name='ramesh' AND SALARY='2000';/* AND operator- Both condition should be met*/

select* from CUSTOMERS where ID=3 or ID=5;/* OR operator- It will also execute when one condition is not present*/

select * from Customers where NOT salary='1500';/* NOT  operator is used to remove the following record*/

select *from CUSTOMERS where  address IN ('delhi','kota','mumbai');/* used from multiple values*/

select *from CUSTOMERS where  address NOT IN ('delhi','kota','mumbai');/* removes all the record except this*/

select* from CUSTOMERS where  salary BETWEEN '2000' and '8000';/* only shows the salary between 2K and 8k and the data itself*/

select *from CUSTOMERS where name LIKE 'M%';/* it will give the same row that whose name starts or ends with M*/

select *from CUSTOMERS where name LIKE '_a%';/* here underscore will work as space so here all records will come that is after first word*/

/* FUNCTIONS */
select MAX(salary)  AS Result from customers;/* we can get the maxm value by using MAX operator */

select MIN(salary)  AS Result from customers;/* we can get the main value by using MIN operator */

select SUM(salary)  AS Result from customers;/* we get the total amount of salary by using SUM operator*/

select AVG(salary)  AS Result from customers;/* we can get the average value of the data*/

select COUNT(name) from CUSTOMERS; /* We can count the no of name of customers*/

select COUNT(name) from CUSTOMERS where age>22; /* here we use the WHERE clause for condition */

select count(*)from CUSTOMERS;/* It will count the number of records in the table*/

ALTER table customers add Gender VARCHAR(255);/* Alter command is used for changing or deleting row and column
from database,  It will create a new column GENDER*/

ALTER table customers drop column gender; /* It will drop the column name gender*/

select * into Empbackup2023 from CUSTOMERS;/*The SELECT INTO statement copies data from one table into a new table.*/
select * from Empbackup2023;

select top 2 * from  CUSTOMERS;/* The SELECT TOP clause is used to specify the number of records to return.*/

select top 50 percent * from CUSTOMERS;/*The SELCET TOP PERCENT clause is used to specify the percentage of records*/

backup database studentdb to disk='D:\sql data\Tanzeel.ta';/*The BACKUP DATABASE statement is used in SQL Server to create a full back up of an existing SQL database.*/

create view [Employees ABC] As    
Select Name,AGE from CUSTOMERS where age=32; /* We Can view the specific records*/

select *from  [Employees ABC];

create view [salary above 5000] as
select Name,Age,Salary from CUSTOMERS where salary>5000;/* we can set the limit by using view statement*/
select *from [salary above 5000];


create index MyIndex on customers(name);






BEGIN tran;
DELETE FROM CUSTOMERS WHERE AGE = 25;
COMMIT;

Begin tran;
DELETE FROM CUSTOMERS WHERE AGE = 25;
ROLLBACK;

BEGIN TRAN;
DELETE FROM CUSTOMERS WHERE AGE = 22; 
ROLLBACK;

select @@TRANCOUNT

begin tran

DELETE FROM CUSTOMERS WHERE AGE = 24;
UPDATE CUSTOMERS SET AGE = 25 WHERE ID = 7;
ROLLBACK
COMMIT
SELECT * FROM CUSTOMERS;
select*from employee;
drop table CUSTOMERS;



select *from customers;
drop table employee;


