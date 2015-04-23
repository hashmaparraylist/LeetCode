# Write your MySQL query statement below
select d.Name, e.Name, e.Salary
from
    Employee e,
    Department d,
    (select DepartmentId, max(Salary) as Salary from Employee group by DepartmentId) max_salary
where max_salary.DepartmentId = d.Id
and max_salary.DepartmentId = e.DepartmentId
and max_salary.Salary = e.Salary
