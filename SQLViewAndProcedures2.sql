

create view myView1
as 
select Employee.Salary from Employee

alter view myView1
as
select Employee.Name from Employee

select * from myView1
order by Salary desc


create proc GetEmployeeById 
@Id int 
as 
select * from Employee
where Employee.id=@Id

execute GetEmployeeById 2

alter proc GetEmployeeById
@Id int =3
as 
select * from Employee
where Employee.id=@Id

execute GetEmployeeById


create proc GetEmployeeDataByName 
@name nvarchar(50)
as 
select * from Employee
where Employee.Name like @name+'%'

execute GetEmployeeDataByName 'a'


create proc UpdateDataEmployee 
@name nvarchar(50),
@Salary int,
@id int
as
update Employee
set Name=@name ,Salary= @Salary
where Employee.id=@id

execute UpdateDataEmployee 'Hasas' , 2000000 , 9


create proc DeleteDataEmployee 
@id int 
as
delete from Employee
where id=@id

execute DeleteDataEmployee 9

