use piramalemployee
go
select * from b22student
select  city as current_city, name, gender from b22student
update b22student 
set age = 26 , paidfees = 30000
where name = 'ajay'
select count(name) from b22student
select * from b22student
order by age 


create table employee (
employeeName varchar(50),
street varchar (50),
city varchar (50)
)

create table work (
employeeName varchar(50),
companyName varchar (60),
salary int 
)

create table company(
companyName varchar (50),
city varchar (60)
) 

create table manages (
employeeName varchar (60),
managerName varchar(50)
)
select * from employee
drop table manages
drop table EmployeeDetail
drop table Employeee
drop table Employeee

CREATE TABLE Employeee (
EmpID int NOT NULL,
EmpName Varchar (50),
Gender varchar(50),
Salary int,
City varchar(60) )
--- first run the above code then below code
INSERT INTO Employeee
VALUES (1, 'arjun', 'M', 75000, 'Pune'),
(2, 'Ekadanta', 'M', 125000, 'Bangalore'),
(3, 'Lalita', 'F', 150000 , 'Mathura'),
(4, 'Madhav', 'M', 250000 , 'Delhi'),
(5, 'Visakha', 'F', 120000 , 'Mathura')

select * from Employeee

CREATE TABLE EmployeeDetail (
EmpID int NOT NULL,
Project Varchar (50),
EmpPosition varchar(20),
DOJ date
)

SELECT CONVERT(DATE, '2023-10-16', 120);


--- first run the above code then below code
INSERT INTO EmployeeDetail
VALUES (1, 'P1', 'Executive', '2019-01-26')   
INSERT INTO EmployeeDetail
VALUES(2, 'P2', 'Executive','2020-04-05') ,
(3, 'P1', 'Lead','2021-10-21'),
(4, 'P3', 'Manager','2019-11-29') ,
(5, 'P2', 'Manager','2020-08-01')

select * from Employeee
select * from EmployeeDetail
-- Find the list of employees whose salary ranges between 2L to 3L.

select * from Employeee 
where salary between 200000 and 300000

select * from Employeee
where Salary > 200000 and Salary < 300000

--Write a query to retrieve the list of employees from the same city.

select * 
from Employeee e1, Employeee e2
where e1.city  = e2.city and e1.empid != e2.empid	

--Query to find the null values in the Employee table.
select* 
from Employeee 
where EmpID is null

--Query to find the cumulative sum of employee’s salary.

select	EmpID , EmpName ,sum (Salary) over (order by EmpID ) ascumaletive_sum
from Employeee

--What’s the male and female employees ratio.

select 	
(count (*) filter (where Gender = 'M') * 100.0 / count (*)) as maleratio, 
(count (*) filter (where Gender = 'F') * 100.0 / count (*)) as femaleratio	
from Employeee
SELECT
(COUNT(*) FILTER (WHERE Gender = 'M') * 100.0 / COUNT(*)) AS MalePct,
(COUNT(*) FILTER (WHERE Gender = 'F') * 100.0 / COUNT(*)) AS FemalePct
FROM Employee;


select * from Employeee
select * from EmployeeDetail
