create database db001;
use db001;
create table EmployeesDetails(
empid int (20) not null,
fullname varchar (30) not null,
Managerid int (10) not null,
DateOfJoining date not null,
city varchar (20) not null,
primary key (empid)
);

select * from EmployeesDetails;

insert into EmployeesDetails
(empid,fullname,Managerid,DateOfJoining,city)
values
('121', 'John Snow', '321', '01-31-2019', 'Toronto'),
('321', 'Walter White', '986', '01-30-2020','California'),
('421', 'Kuldeep Rana', '876', '27-11-2021', 'New Delhi');

alter table EmployeesDetails modify column DateOfJoining varchar(15) not null;

use db001;
create table EmployeeSalary(
empid int (10) not null,
project varchar (20) not null,
salary int (10) not null,
variable int(50) not null,
foreign key (Empid) references EmployeesDetails(Empid)
);
select * from EmployeeSalary;

insert into EmployeeSalary
(empid,project,salary,variable)
values
('121', 'P1', '8000', '500'),
('321', 'P2', '10000','1000'),
('421', 'P1', '12000','0');

select * from EmployeeSalary;

/* Question 1 */
#write a SQL query to fetch the Emplid and fullname of all the employees working under the Manager mwith id = '986'

select empid,fullname from EmployeesDetails
where Managerid =986;

/* Question 2 */
#Write an SQL query to fetch the diffferent projects available from the EmployeeSalary table

select project from EmployeeSalary;

/* Question 3 */
#Write an SQL query to fetch the count of employees working project

select count(*) from employeeSalary where project='P1' ;

/* Question 4 */
#Write an SQL query to find maximum and minimum and average salary of empoyees

select min(salary)
from EmployeeSalary;

select max(salary)
from EmployeeSalary;

/* Question 5 */
#Write an SQL query to find the Employeeid whose salary lies in the range of 9000 and 15000

select empid from EmployeeSalary
where salary between 9000 and 15000;

/* Question 6 */
#Write an SQL query to fetch those employees who live in Toronto and and work under the manager with manager id =321

select * from EmployeesDetails
where city= 'Toronto' and managerid=321;

/* Question 7 */
#Write an SQL query to fetch all those employees who works on projects otherthan P1

select * from  EmployeeSalary
where project not like 'P1';

/* Question 8 */
#Write an SQL query to fetch the empid that are presented in both the tables 'EmployeesDetails' & 'EmployeeSalary'

select empid from EmployeesDetails
where empid in(select empid from EmployeeSalary);

/* Question 9 */
#Write an SQL query to fetch employees names having a salary greater than or equal to 5000 and less than or equal to 10000

select fullname from EmployeesDetails
where empid in(select empid from EmployeeSalary where salary >=5000 and <=10000);

