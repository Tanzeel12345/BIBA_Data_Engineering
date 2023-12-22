/*DML,DDL command */

 CREATE DATABASE pet_adoption;
USE pet_adoption;


CREATE TABLE animals (
         id VARCHAR(50) NOT NULL,
         name VARCHAR(30),
         breed VARCHAR(25),
         color VARCHAR(15),
         gender VARCHAR(10),
         status INTEGER
     );
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('1234', 'Snowy', 'Husky', 'White', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('5678', 'Princess', 'Pomeranian', 'Black', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('4523k', 'Cricket', 'Chihuahua', 'Brown', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('jd734', 'Princess', 'Poodle', 'Purple', 'Female', 0);

UPDATE animals SET color = 'Brown' WHERE color = 'Purple';

ALTER TABLE animals ADD species VARCHAR(50);
SELECT name FROM animals WHERE id = '1234';
SELECT * FROM animals ;
DROP TABLE animals;

CREATE TABLE adoptions (animal_id VARCHAR(50) NOT NULL, name VARCHAR(30), contact VARCHAR(30), date TIMESTAMP);

ALTER TABLE adoptions DROP COLUMN date;

ALTER TABLE adoptions ADD date DATETIME; 



INSERT INTO adoptions (animal_id, name, contact, date) VALUES ('5678', 'Pinocchio', 'top@gmail.com', GETDATE());
INSERT INTO adoptions (animal_id, name, contact, date) VALUES ('1234', 'Ella', 'contact@gmail.com', GETDATE());

SELECT * from adoptions;

DROP TABLE adoptions;











CREATE TABLE shelters (id INTEGER, name VARCHAR(50), location VARCHAR(50));

INSERT INTO shelters (id, name, location) VALUES (1, 'Animals 4 Homes', 'Red City');
INSERT INTO shelters ( name,id, location) VALUES ( 'Animals 4 Forest',2, 'Green City');

SELECT * FROM shelters	ORDER BY id DESC;

SELECT name from sys.tables;
SELECT name from sys.databases;

DROP DATABASE pet_adoption;







CREATE DATABASE human;
use human;

CREATE TABLE Customers(customerID INTEGER , CustomerName VARCHAR(30), ContactName VARCHAR(30) , Address VARCHAR(50));

INSERT INTO Customers VALUES(1,'Kundan','Prashant','Delhi');
INSERT INTO Customers VALUES(2,'Pyush','Sachin','UP');
INSERT INTO Customers VALUES(3,'Sakhi','Mohan','Delhi');


UPDATE Customers SET CustomerName ='Ankita' WHERE customerID = 3;
DELETE FROM Customers WHERE customerID = 2;

SELECT * FROM Customers;
SELECT DISTINCT address from customers;