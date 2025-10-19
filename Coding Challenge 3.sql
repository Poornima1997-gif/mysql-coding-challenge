-- clauses and operators
create database university;
use university;

create table Students(
student_id int primary key,
students_name varchar(100),
email varchar(100),
courses_name varchar(100),
Gender enum("m", "F"),
gpa decimal(10,2),
Register_NO varchar(50)
);

insert into 
Students (student_id,students_name,email,courses_name,Gender,gpa,Register_NO)
values
(1, 'Poornima', 'poornimaelumalai02@email.com', 'computerscience' , 'F', 9.2,4130106001),
(2, 'Priyanka', 'epriyanka2311@email.com', 'ECE', 'F', 8.2,4130106002),
(3, 'Poojith', null , 'EEE','M', 8.3,4130106003),
(4, 'Kumar','settkumar2807@gmail.com', 'ECE' , 'M',9.8,4130106004),
(5, 'Sandhiya', null, 'CIVIL','F' , 9.7,4130106005);

select* from students;
--  Distinct and where--
select distinct courses_name
from Students;

select distinct courses_name
from Students
where Register_NO=4130106004;

-- 2 with null and without null
select student_id,students_name
from Students
where email is null;

select student_id,students_name
from Students
where email is not null
;

-- in, between, not between
select student_id,students_name
from Students
where Register_NO in(4130106001, 4130106003);

select student_id,students_name,gpa
from Students
where gpa between 9.0 and 9.8;

select student_id,students_name,gpa
from Students
where gpa not between 9.0 and 9.8;