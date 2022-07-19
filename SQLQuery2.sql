

CREATE TABLE [dbo].[employees](
	[Id] [int]  NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Salary] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[Age] [int] NULL,
	[Birthdate] [date] NULL
)
insert into  [dbo].[employees]([Id], [Name], [Salary], [Gender], [Age], [Birthdate]) VALUES (3, 'Ahmed', '2000', 1, 20,'2000-01-01')

insert into [dbo].[employees] ([Id], [Name], [Salary], [Gender], [Age], [Birthdate]) VALUES (4, 'Ali', '3000', 1, 22,'2002-02-02')

insert into [dbo].[employees] ([Id], [Name], [Salary], [Gender], [Age], [Birthdate]) VALUES (5, 'Mohammed', '4000', 1, 23,'2003-03-03')

insert into [dbo].[employees] ([Id], [Name], [Salary], [Gender], [Age], [Birthdate]) VALUES (6, 'Ayman', '5000', 1, 24, '2004-04-04')

insert into [dbo].[employees] ([Id], [Name], [Salary], [Gender], [Age], [Birthdate]) VALUES (7, 'Mona', '6000', 0, 25,'2005-05-05')

insert into [dbo].[employees] ([Id], [Name], [Salary], [Gender], [Age], [Birthdate]) VALUES (8, 'Sara', '7000', 0, 26,'2006-06-06')

insert into [dbo].[employees] ([Id], [Name], [Salary], [Gender], [Age], [Birthdate]) VALUES (9, 'Aya', '8000', 0, 27,'2007-07-07')

insert into [dbo].[employees] ([Id], [Name], [Salary], [Gender], [Age], [Birthdate]) VALUES (11, 'Yamen', '9000', 1, 28, NULL)
select name from[dbo].[employees]
select * from [dbo].[employees]
select * from [dbo].[employees] where id !=3
select [Revision].[dbo].[employees].Birthdate from [Revision].[dbo].[employees]
select * from[dbo].[employees] where [Id]in(5,6)
select * from [dbo].[employees] where Id=7 or Id=8
select * from [dbo].[employees]where Salary>=3000
select * from [dbo].[employees]where Salary !>5000
select * from [dbo].[employees]where Salary between 3000 and 9000
select * from [dbo].[employees]where Birthdate is null
select * from [dbo].[employees] order by Salary desc

select [Name],[Gender], case [Gender]
when 0 then 'female' 
when 1 then 'male'
else 'nothing'
end stateGender
from[dbo].[employees]

