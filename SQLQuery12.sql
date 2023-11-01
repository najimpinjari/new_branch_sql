USE piramalemployee
go
create table student0(
studentId int primary key,
studenetName varchar (50)
)
go
insert into student0 values (1,'john'),(2,'sarah'),(3,'mike')

create table grades (
studentId int foreign key references student0(studentId),
grades int,
)
go
insert into grades values (1,85),(2,90),(3,75)
select * from student0
select * from grades

--Write an SQL query to retrieve the names of students along with their grades.

select student0.studenetName ,grades.grades
from student0
inner join grades
on student0.studentId =grades.studentId

--Write an SQL query to retrieve the student with the highest grade

select s.studenetName , g.grades as highest_grads
from student0 as s
left join grades as g
on s.studentId = g.studentId
where g.grades = (select max(grades)from grades)

--Write an SQL query to retrieve the students who scored less than 80

select s.studenetName , g.grades
from student0 as s
inner join grades as g
on g.studentId = s.studentId
where grades <=80

select * from student0
select * from grades

--Write an SQL query to retrieve the students along with their
--grades in descending order of grades

select s.studenetName ,g.grades 
from student0 as s
right join grades as g
on g.studentId = s.studentId
order by grades DESC 

--Write an SQL query to count the number of students and their grades
SELECT s.stu