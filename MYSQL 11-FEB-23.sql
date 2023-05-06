create database ajith;
drop database ajith;
use ajith;
create table student(
student_id varchar(10) not null,
age int not null,
student_name varchar(100) not null,
place varchar (100) not null,
primary key (student_id)
);
select * from student;

insert into student(
student_id,age,student_name,place)
value
('s6', 20, 'Ajith', 'Thrissur'),
('s8', 25, 'Arun', 'Palakkad'),
('s4', 25, 'Jishnu', 'Ernamkulam');

select * from student;






create database AjithAnitha;
use AjithAnitha;
create table business(
item_id varchar (10) not null,
income int not null,
item_name varchar (120) not null,
place varchar(150) not null,
primary key (item_id)
);
select * from business;

insert into business
(item_id,income,item_name,place)
value
('pickles', 200, 'Punyam', 'Thrissur'),
('vegies', 400, 'Samrudhi', 'Thrissur');
