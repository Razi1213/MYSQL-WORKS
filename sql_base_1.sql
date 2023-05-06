CREATE DATABASE db1;
show DATABASES;
USE db1;
create TABLE empinfo(
emp_id VARCHAR(10),
first_name VARCHAR(25),
last_name VARCHAR(25),
age INT(10),
dept Varchar(25),
Salary float(7,2),
primary key(emp_id)
);
INSERT INTO empinfo
VALUES(100,'Jonie','Weber',25,'mechanical',25000),
(101,'Jonie','Weber',25,'mechanical',25000),
(102,'Akhil','Ravi',30,'computer',35000),
(103,'Amal','Nath',25,'mechanical',25000),
(104,'Sanju','Krishnan',28,'electronics',30000),
(105,'Anjali','Hari',22,'Computer',18000),
(106,'Janvi','Prabhakar',30,'civil',45000);
select * from empinfo;
select * from empinfo where age=25;
select * from empinfo where age>25;
select * from empinfo where first_name Like 'A%';
select * from empinfo where first_name Like 'J%';
select * from empinfo where first_name Like '%A%';
select * from empinfo where first_name Like '%A%n%';
select * from empinfo where first_name Like '%a';
select * from empinfo where age=25 or age=30;
select * from empinfo where age not in(25,30);
update empinfo set last_name="Raveendran"
where first_name="Janvi";


