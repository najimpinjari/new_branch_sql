use piramalemployee

select * from department 
select * from Employee

--select name from Employee where name start with 'a'
select name from Employee where name like 'a%'

--select name from Employee where name ends with 'h'
select name from Employee where name like '%h'--ritesh
satish

--find department name that does not have eny employee
select department.name
from department
where department.id not in (select Did from Employee)

--find all employee who do not belong to any department 

select Employee.id , Employee.name
from Employee left join department 
on Employee.Did = department.id
where Employee.Did is null

5 -- compute employee count by its department name 

select department.name, count(Employee.Did)as Emp_count
from department left join Employee
on department.id = Employee.Did
group by department.name 

--6

select department.name ,department.id, count(Employee.Did)as Emp_count
from department left join Employee
on department.id = Employee.Did
group by department.name,department.id
having count(Employee.Did) > 2

SELECT * Employee
FROM information_schema.Employee
WHERE table_schema = 'piramalemployee'

