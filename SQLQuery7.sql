create database studentdb;

use studentdb;

CREATE TABLE employee (emp_id INT, emp_name VARCHAR(255), 
                                  emp_city VARCHAR(255),
                                  emp_country VARCHAR(255),
                                  PRIMARY KEY (emp_id));
INSERT INTO employee VALUES (101, 'Utkarsh Tripathi', 'Varanasi', 'India'),
                            (102, 'Abhinav Singh', 'Varanasi', 'India'), 
                            (103, 'Utkarsh Raghuvanshi', 'Varanasi', 'India'),
                            (104, 'Utkarsh Singh', 'Allahabad', 'India'),
                            (105, 'Sudhanshu Yadav', 'Allahabad', 'India'),
                            (106, 'Ashutosh Kumar', 'Patna', 'India');
SELECT * FROM employee;


update employee set emp_name = 'Tanzeel atahar' where emp_city = 'patna';
delete from employee where emp_city='patna';
alter table employee add emp_location varchar(255);

select count(*) from employee;
select count(distinct emp_name) from employee;
select * from employee order by emp_city ;
select sum(emp_id) from employee;
select * from employee order by emp_id desc;
Select emp_name from employee where emp_name like 's%';
Select emp_name from employee where emp_name like '%u';
Select CURRENT_TIMESTAMP;
Select GETDATE();