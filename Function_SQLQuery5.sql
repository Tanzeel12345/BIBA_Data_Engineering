/*SQl functions */ 
/*String functions*/

SELECT ASCII('A');
SELECT CHAR(65);
SELECT LEN('Apple');
SELECT REPLACE('Country','y','ies');
SELECT REVERSE('Apple');
SELECT LOWER('APPLE');
SELECT str (134.56, 3, 2); /*(number,len ,decimal) 135 */
SELECT UPPER('apple');

/*Date functions*/
SELECT GETDATE();                          /*2023-12-07 12:46:46.643*/
SELECT DATEADD (MM, 2, '2010-02-03');      /*2010-04-03 00:00:00.000*/
SELECT DATEADD (YYYY, 5, '2010-02-03');    /*2015-02-03 00:00:00.000*/
SELECT DATEADD (DD, 3, '2010-02-03');      /*2010-02-06 00:00:00.000*/

SELECT DATEDIFF ( YEAR, CONVERT (DATETIME, '2006-05-06'), convert ( DATETIME, '2009-01-01'));         /*3*/
SELECT DATEDIFF ( MONTH, CONVERT (DATETIME, '2006-05-06'), convert ( DATETIME, '2009-01-01'));        /*32*/
SELECT DATEDIFF ( DAY, CONVERT (DATETIME, '2006-05-06'), convert ( DATETIME, '2009-01-01'));          /*971*/
SELECT DATEDIFF ( WEEK, CONVERT (DATETIME, '2006-05-06'), convert ( DATETIME, '2009-01-01'));         /*139*/
SELECT DATEDIFF ( WEEKDAY, CONVERT (DATETIME, '2006-05-06'), convert ( DATETIME, '2009-01-01'));      /*971*/

SELECT DATEPART (MM, '2008-01-02'); /*1*/
SELECT DATEPART (DD, '2008-01-02'); /*2*/

SELECT DAY ( '2010-03-21');  
SELECT MONTH ('2007-04-03');
SELECT YEAR ( '2011-04-17');







/Mathematical functions/

SELECT ABS(-2);   /2/ 
SELECT SIN(30);
SELECT TAN(60);

SELECT CEILING(14.6); /15 RETURN NUMBER GREATER THAN THE FLOOR NUMBER/
SELECT CEILING(-14.01);/*-14 RETURN THE FLOOR NUMBER DIRECTLY */

SELECT FLOOR(14.61); /14 RETURN THE FLOOR NUMBER DIRECTLY/
SELECT FLOOR(-14.01); /*-15 RETURN THE NEXT  NUMBER */

SELECT ROUND(423.456,-1);/4.500/
SELECT ROUND(474.456,-1);/470.000/

SELECT EXP(2); /*e raised to power 4 where e is 2.718281..*/
SELECT LOG(2,2);










/Rank functions/

CREATE DATABASE RANK_FUNCTIONS;
USE RANK_FUNCTIONS;

CREATE TABLE STUDENT(
studid INT ,
course VARCHAR(30),
grade VARCHAR(1)
);
INSERT INTO STUDENT VALUES(1,'BE','A'),
                          (2,'MBA','C'),
						  (3,'BSC','B'),
						  (4,'MS','A'),
						  (5,'BBA','B'),
                          (6,'MBA','A'),
						  (6,'MCA','C');

SELECT studid,grade , ROW_NUMBER() OVER (ORDER BY studid DESC) AS Rank
FROM STUDENT;
SELECT * FROM STUDENT;





CREATE TABLE Product(
orderid INT ,
productname VARCHAR(30),
cost DECIMAL(9,1)
);

INSERT INTO Product VALUES(101,'Pen',20.5),
                          (321,'Pencil',11.5),
						  (241,'Eraser',10),
						  (380,'Books',150),
						  (561,'Bootle',70),
						  (561,'Bootle_Water',45);
INSERT INTO Product VALUES(632,'Coke',60);
SELECT orderid , cost , RANK() OVER (ORDER BY orderid) AS Rank /Rank same number for duplicate orderid and skipped the next rank count/
FROM Product;




SELECT * FROM Product;



/*danse_rank()*/
SELECT orderid, productname, DENSE_RANK() OVER (ORDER BY orderid desc) AS RANK FROM Product;

CREATE TABLE Subject(
subid INT ,
subname VARCHAR(30),
examdate DATETIME,
location VARCHAR(30)
);

INSERT INTO Subject VALUES(201,'Science','2010-04-05 00:00:00:000','Mumbai'),
                          (202,'English','2011-04-05 00:00:00:000','Lucknow'),
						  (203,'Maths','2010-04-05 00:00:00:000','Delhi'),
						  (204,'Social Science','2012-04-05 00:00:00:000','Pune');

/NTILE/
SELECT subid , subname ,examdate , NTILE(4) OVER (ORDER BY subid) AS Rank
FROM Subject ;

SELECT * FROM Subject;




/*System function*/
SELECT HOST_ID();
SELECT HOST_NAME();
SELECT SUSER_ID(); /*Returns the log on Identification number*/
SELECT DB_NAME(); /*Return database name*/
SELECT USER_ID();



/Aggregate functions/

/AVG/
SELECT  * FROM Product;

SELECT AVG(cost) AS Average FROM Product; /Average cost of products/

SELECT SUM(cost) AS Total_Sum FROM Product; /total cost of all products/

SELECT COUNT(DISTINCT orderid) As Total_Count FROM Product; /Total product having unique orderid/

SELECT productname ,cost FROM Product
WHERE cost =(SELECT MAX(cost) FROM Product); /Product with maximum cost/

SELECT productname ,cost FROM Product
WHERE cost =(SELECT MIN(cost) FROM Product); /Product with minimum cost/

SELECT * FROM Product;

/SELECT CAST(367 AS FLOAT)/7 ; 52.4285714285714/

/GROUP BY/
CREATE TABLE Employee(
empid INT PRIMARY KEY,
emprole VARCHAR(30),
vacationhours INT
);

INSERT INTO Employee VALUES(201,'Manager',80),
                           (301,'Lead',65),
						   (381,'Manager',80),
						   (401,'Engineer',50),
						   (550,'Lead',65),
						   (332,'Senior Manager',100),
						   (481,'Manager',80),
						   (631,'Engineer',50);

/Query to find employee role and minimum and maximum vactionhours having vacationhours is greater than 60/

SELECT emprole , MIN(vacationhours) As MINIMUM , MAX(vacationhours) AS MAXIMUM
FROM Employee
WHERE vacationhours > 60
GROUP BY emprole;

SELECT * FROM Employee;