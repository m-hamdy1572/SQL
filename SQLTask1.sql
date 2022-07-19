create database university ;

create table employee (
ID INT primary key identity(1,1),
empName nvarchar(50),
EmpSalary int
,EmpGender nvarchar(10)
, EmpBirthdate date,
EmpAddress nvarchar(50)
)

create table projects (
ID INT primary key identity(1,1),
ProName nvarchar(50)
,ProLocation nvarchar(50)
)

create table Departments (
ID INT primary key identity(1,1),
DptName nvarchAR(50)
)

insert into employee  values ('Ahmed',2000,'True','02-02-2000','banha');

insert into projects values('PCB','Hassan');

insert into Departments values('CS');