-------Join----------
--Inner Join
--Outer Join (Right join, Left join, Full Join)
--Cross Join
--Self Join
----------------------------------------------------
----join----
--------------------------
select * from employee
select * from Department

select emp.Name , dpt.DepartmentName 
from employee emp join Department dpt
on emp.DepartmentId = dpt.Id



select emp.Name , dpt.DepartmentName 
from employee emp , Department dpt
where emp.DepartmentId = dpt.Id


select employee.Name , Department.DepartmentName
, Project.ProjectName , Country.CountryName 
from employee join Department
on employee.DepartmentId =Department.Id join Project
on employee.ProjectId = Project.Id join Country
on employee.CountryId = Country.Id


----------------------------------------------------
----Inner join----
--------------------------

select employee.Name , Department.DepartmentName
, Project.ProjectName , Country.CountryName 
from employee inner join Department
on employee.DepartmentId =Department.Id inner join Project
on employee.ProjectId = Project.Id inner join Country
on employee.CountryId = Country.Id

----------------------------------------------------
----Outer join----Left Outer Join
--------------------------

select * from employee
select * from Department


select employee.Name , Department.DepartmentName
from employee left outer join Department
on employee.DepartmentId = Department.Id


----------------------------------------------------
----Outer join----right Outer Join
--------------------------

select employee.Name , Department.DepartmentName
from employee  right join Department
on employee.DepartmentId = Department.Id



----------------------------------------------------
----Outer join----Full Outer Join
--------------------------

select employee.Name , Department.DepartmentName
from employee  full join Department
on employee.DepartmentId = Department.Id


----------------------------------------------------
----Cross join----
--------------------------

select employee.Name , Department.DepartmentName
from employee cross join Department


----------------------------------------------------
----self join----
--------------------------

select emp.Name as Employee, mgr.Name as manager
from employee emp join employee mgr 
on emp.ManagerId = mgr.Id



---------------------------------------------------------
---Aggregating Functions---


select max(salary) from employee

select min(salary) from employee

select avg(salary) from employee

select id , name from employee

select count(id) from employee

select sum(salary) from employee


select DepartmentName,sum(salary) 
from employee join Department
on employee.DepartmentId = Department.Id 
group by DepartmentName
having sum(salary)  > 5000
order by sum(salary) desc

--select
--from 
--where || on
--Group by
--Having
--Order By




select top(3) max(salary) from employee
group by employee.Name
order by max(salary) desc


select top(3) max(salary) from employee
group by employee.Name
having max(salary) > 11000
order by max(salary) desc


-----------------------------------------------------
------Built In Function--------------

select upper(Name) from employee


select lower(Name) from employee


select len(Name) from employee


select ltrim(name) from employee


select substring(ltrim(name),1,2) from employee


select substring(ltrim(name),1,2) + substring(ltrim(name),3,len(name)) 
 from employee


 select concat (ltrim(name),' ',salary) from employee

 select distinct (name) from employee


 select GETDATE()


 select CHOOSE(3,name,Salary,Gender) from employee


 select ISNUMERIC (salary) from employee


 select salary ,
 iif(salary>5000,'medium','high')
 from employee


 select birthdate from employee


 select ISNULL(name,'N/A') from employee


 select parse('aaa' as date using 'AR-EG')

 
 select try_parse('aaa' as date using 'AR-EG')

 ---------------------------------------------------
 ---views----
 --how to create view

create view myview1
as
select employee.Name , Department.DepartmentName
, Project.ProjectName , Country.CountryName 
from employee inner join Department
on employee.DepartmentId =Department.Id inner join Project
on employee.ProjectId = Project.Id inner join Country
on employee.CountryId = Country.Id



--how to call view
select * from myview1


--how to delete view
drop view myview1


create view myview1
as
select salary from employee


select * from myview1
order by Salary desc

create view myview2
as
select name from employee


select * from myview2


create view myview11 with schemabinding
as
select namee from [dbo].[employee]


select * from myview44


-----------------------------------------------------
----Procedures-----------

--How to create a simple proc
create proc GetEmployee
as
select name as empNAme from employee


--how to call proc
execute GetEmployee



-- how to create parameter proc
alter proc GetEmployeeInfoByID
@VarNAme int = 3
as
select * from employee
where Id = @VarNAme


execute GetEmployeeInfoByID 4




create proc GetEmpDataByName
@name nvarchar(30)
as
select * from employee
where name like @name+'%'

execute GetEmpDataByName 's'

-----------------------------------------------
---Insert-------

create proc InsertDataIntoEmployee
@name nvarchar(50)
, @salary int
as
insert into employee(Name,Salary)values(@name,@salary)


execute InsertDataIntoEmployee 'aaaaaa' , 4545454


------------------------------------------------
---Update Proc---


create proc UpdateEmpData
@name nvarchar(40)
, @salary int
, @id int
as
update employee
set Name = @name , Salary = @salary
where id = @id


execute UpdateEmpData 'bbbbbb' , 767676767 , 2012



----------------------------------------------------
---Delete Data Using Procrdure---

create proc DeleteDataFromEmp
@x int
as
delete from employee
where id = @x 


execute DeleteDataFromEmp 2012









































