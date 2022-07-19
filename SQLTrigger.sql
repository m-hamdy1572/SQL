

create trigger InOf on Employee
instead of delete
as
select * from Employee


delete from Employee;


------- For -------

create trigger UpdataDataFor on Employee
For update
as
print 'Updating occur on project table'

update Employee set Dep_id=4 where id=8;

select project_name from inserted


create table LogData 
(
id int primary key identity (1,1),
projectName nvarchar(50),
ProjectLoction nvarchar(50),
ActionData nvarchar(50),
GetTime datetime,
oldValue nvarchar(50),
newValue nvarchar(50)
)

create trigger LogDataDelete on Project
after delete
as
declare @oldValue nvarchar(50) =(select project_name from deleted)

insert into LogData(projectName,ProjectLoction,ActionData,oldValue,newValue) values('Project','Project Name','delete',@oldValue,'null')

delete from project where id=3;


select * from LogData


