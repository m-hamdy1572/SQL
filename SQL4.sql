use db
create view ViewRelation  with schemabinding
as
select Employee.Name, Department.Dep_Name from Employee join Department
on Department.id=Employee.Dep_id

select * from ViewRelation


drop view ViewRelation


