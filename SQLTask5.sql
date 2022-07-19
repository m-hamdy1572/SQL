create view vew3 with schemabinding
as
SELECT dbo.Department.Dep_Name, dbo.Employee.Name
FROM     dbo.Employee INNER JOIN
                  dbo.Department ON dbo.Employee.Dep_id = dbo.Department.id

select * from vew3
