create database persons;
use persons;
create table person_details(
person_id int not null,
first_name varchar (20) not null,
last_name varchar (20) not null,
age int not null,
city varchar (20) not null,
phone_number varchar (20) not null,
primary key (person_id)
);
explain person_details;