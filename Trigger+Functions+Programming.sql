-------------------------------------------------------
---------Programming with sql (IF , While)-------------

--if(--condition)
--code;
--else
--code;

--if(--condition)
  --begin
     --code;
  --end
--else
  --begin
     --code;
  --end
---------------------------------------
--if(1=1)
--    print 'Equal To 1'
--else
--    print 'Not Equal To 1'

---------------------------------------
--declare @x as int = 10
--if(@x > 1)
--  begin
--    print 'Greater Than 1'
--	print 'Greater Than 1'
--	print 'Greater Than 1'
--  End
--else
--  begin
--    print 'Less Than 1'
--	print 'Less Than 1'
--	print 'Less Than 1'
--  End

---------------------------------------

--while(--condition)
--code;

--while(--condition)
  --begin
    --code;
  --end
---------------------------------------

--while (1=1)
-- print 'Equal To 1'


--declare @x int = 1
--while (@x < 10)
--  begin
--    print 'Greater Than 10'
--	set @x+=1
--  end

---------------------------------------

--declare @x int = 0
--while (@x < 50)
--  begin
--    insert into Labs ([LabName]) values (concat('Lab',@x+1))
--	set @x+=1
--  end

-------------------------------------------------------
-----------------Functions-----------------------------

--create function FunctionName (--Parameters with data type)
--returns data type
--as
--begin
--return (--Code)
--end

-------------------------------------------------------

--create function F_Capital (@name nvarchar(50))
--returns nvarchar(50)
--as
--begin
--return
--(
-- select upper(SUBSTRING(ltrim(@name),1,1)) 
-- + lower(SUBSTRING(ltrim(@name),2,len(@name)))
--)
--end

--select [dbo].[F_Capital](name) from employee

-------------------------------------------------------

--create function GetDataByID (@id int)
--returns nvarchar(50)
--as
--begin
--return
--(
-- select Department.DepartmentName from Department where id = @id
--)
--end


--select name,[dbo].[GetDataByID](id) from employee


-------------------------------------------------------

--create function GetTableData (@salary money)
--returns table
--as
--return
--(
--select * from employee where Salary > @salary
--)

--select * from [dbo].[GetTableData](3000)

-------------------------------------------------------
-----------------Trigger-------------------------------

-- Event ===> Action

--create trigger TriggerName on TableName
--instead of || --for || --after
--as
--Code

-----------------------------------------------------
--create trigger InsOF on [dbo].[employee]
--instead of delete
--as
--select * from [dbo].[employee]


--delete from employee


-----------------------------------------------------

--create trigger UpdateDateFor on [dbo].[Project]
--for update
--as
--print 'Updating Occur On Project Table'


--update Project set ProjectName = 'AAAA' where Id = 2


-----------------------------------------------------

--alter trigger LogDataTable on [dbo].[Project]
--after insert
--as
--declare @Pname nvarchar(50) = (select ProjectName from inserted)
--declare @PLocation nvarchar(50) = (select ProjectLocation from inserted)

--insert into [dbo].[LogData] ([TableName],[ActionType],[ColumnName],[NewValue])values('employee','insert','[ProjectName]',@Pname)
--insert into [dbo].[LogData] ([TableName],[ActionType],[ColumnName],[NewValue])values('employee','insert','[ProjectLocation]',@PLocation)



--alter trigger ULogDataTable on [dbo].[Project]
--after update
--as
--declare @OldPname nvarchar(50) = (select ProjectName from deleted)
--declare @OldPLocation nvarchar(50) = (select ProjectLocation from deleted)

--declare @NewPname nvarchar(50) = (select ProjectName from inserted)
--declare @NewPLocation nvarchar(50) = (select ProjectLocation from inserted)

--insert into [dbo].[LogData] ([TableName],[ActionType],[ColumnName],[NewValue],[OldValue])values('project','update','[ProjectName]',@NewPname,@OldPname)
--insert into [dbo].[LogData] ([TableName],[ActionType],[ColumnName],[NewValue],[OldValue])values('project','update','[ProjectLocation]',@NewPname,@OldPLocation)



