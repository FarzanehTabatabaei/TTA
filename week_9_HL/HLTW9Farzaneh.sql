use persons;
create table teacher(
teacher_id int not null,
first_name varchar (20) not null,
last_name varchar (20) not null,
age int not null,
phone_number varchar (20) not null,
primary key (teacher_id)
);
create table course(
course_id int not null,
course_name varchar (20) not null,
teacher_id int not null,
FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id),
primary key (course_id)
);

insert into teacher (teacher_id, first_name, last_name, age, phone_number)
values ('1', 'Farzaneh', 'Tabatabaei', '28', '756934576'),
('2', 'Kamala', 'Bahandari', '30', '765849534'),
('3', 'lewis', 'Akey', '33', '795876123'),
('4', 'Zak', 'Bark', '42', '743876098'),
('5', 'Sara', 'Barrington', '45', '786234956'),
('6', 'Tom', 'Baron', '36', '756349675');

insert into course(course_id, course_name, teacher_id)
values ('1', 'Math', '2'),
('2', 'Chemistry', '1'),
('3', 'Physics', '5');

#joining two table
SELECT *
FROM teacher
INNER JOIN course
ON teacher.teacher_id = 
course.teacher_id;

#Showing both table structures and data.
SELECT * 
FROM course;

#Running a simple query.
select first_name, last_name, age
from teacher
order by age desc;

#Running a complex query demonstrate the relations between the 2 tables.
SELECT course_id, first_name, age
FROM teacher
left JOIN course
ON teacher.teacher_id = 
course.teacher_id
order by age desc;

# Filter data using comparison operators.
select first_name, last_name, age
from teacher
where age > 30;