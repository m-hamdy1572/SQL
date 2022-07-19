 

select  Employee.Dep_id,Employee.Proj_id , SUM(Employee.Salary) TotalSalary from Employee join Department
on Employee.Dep_id=Department.id join project
on project.id=Department.project_id
group by  Employee.Dep_id,Employee.Proj_id 
having Sum(Salary)>=9000
order by Sum(Salary) desc



select  UPPER(Employee.Name)  , SUM(Employee.Salary) TotalSalary from Employee join Department
on Employee.Dep_id=Department.id join project
on project.id=Department.project_id
group by  Employee.Dep_id,Employee.Proj_id ,Employee.Name
having Sum(Salary)>=9000
order by Sum(Salary) desc