create database Revision
create table employee
(
Id int primary key identity ,
empName nvarchar(50),
empGender bit
)

alter database [Revision]
modify name= database1

alter table [dbo].[employee]
add empSalary nvarchar(10)

drop table [dbo].[employee]
drop database [database1]

alter table [dbo].[Employee]
add empBirthday date, empCountry nvarchar(30),empCity nvarchar(30),empDistrict nvarchar(30)

alter table [dbo].[Employee]
add empDepartment nvarchar(50)
--------
delete from[dbo].[Employee]where [id]=2
insert into [dbo].[Employee]([empName],[empSalary],[empGender],[empBirthday],[empCountry],[empCity],[empDistrict],[empDepartment])
values ('radwa',2000,1,'10-12-1998','egypt','kafrSokr','KafrTesfa','computer science')

update [dbo].[Employee]
set [empSalary]=5000 where id=3



