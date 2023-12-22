/*SQL EXISTS OPERATOR */

use studentdb;

create table products (ProdcutID INT, ProductName varchar(255), 
                      SupplieriD INT, CategoryID INT);

Insert into products values (1, 'chais', 1, 1),
                            (2, 'chang', 1, 1),
							(3, 'Aniseed syrup',1, 2),
							(4, 'Chef Antons Cajun Seasoning',2, 2),
							(5, 'Chef Antons Gumbo Mix',2, 2);

create table suppliers (supplierID INT, supplierName varchar(255), 
                        ContactName VARCHAR(255),  Address varchar(255));

Insert into suppliers values (1, 'Exotic Liquid',    'Charlotte Cooper', '49 Gilbert st'),
                            (2, 'New Orleans Cajun Delights', 'shelley burke', 'P.O.Box 78934'),
							(3, 'Grandma Kellys Homestead','   Regina Murphy','707 Oxford Rd'),
							(4, 'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi');
							
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID );

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID );

drop table products;
drop table suppliers;
select *from suppliers;
select* from products;



/*UNION EXCEPT and INTERSECT Operators in SQL Server*/

CREATE TABLE TableA
(
ID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Department VARCHAR(50));

INSERT INTO TableA VALUES(1, 'Pranaya', 'Male','IT')
INSERT INTO TableA VALUES(2, 'Priyanka', 'Female','IT')
INSERT INTO TableA VALUES(3, 'Preety', 'Female','HR')
INSERT INTO TableA VALUES(3, 'Preety', 'Female','HR');

SELECT * FROM TableA

CREATE TABLE TableB
(
ID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Department VARCHAR(50));

INSERT INTO TableB VALUES(2, 'Priyanka', 'Female','IT')
INSERT INTO TableB VALUES(3, 'Preety', 'Female','HR')
INSERT INTO TableB VALUES(4, 'Anurag', 'Male','IT');


SELECT * FROM TableB

/*UNION Operator:The Union operator will return all the unique rows from both queries. Notice that the duplicates are removed from the result set. 
*/

SELECT ID, Name, Gender, Department FROM TableA
UNION
SELECT ID, Name, Gender, Department FROM TableB

/*UNION ALL Operator: The UNION ALL operator returns all the rows from both queries, including the duplicates*/

SELECT ID, Name, Gender, Department FROM TableA
UNION ALL
SELECT ID, Name, Gender, Department FROM TableB


/*INTERSECT Operator:The INTERSECT operator retrieves the common unique rows from the left and right queries. Notice the duplicates are removed. 
*/

SELECT ID, Name, Gender, Department FROM TableA
INTERSECT
SELECT ID, Name, Gender, Department FROM TableB

/*EXCEPT Operator:The EXCEPT operator will return unique rows from the left query that aren’t in the right query’s results */

SELECT ID, Name, Gender, Department FROM TableA
EXCEPT
SELECT ID, Name, Gender, Department FROM TableB

SELECT ID, Name, Gender, Department FROM TableB /*If you want the rows that are present in Table B but not in Table A, reverse the queries.*/ 
EXCEPT
SELECT ID, Name, Gender, Department FROM TableA








