# Write your MySQL query statement below
select d.Name, e.Name, e.Salary
from 
Employee e,
Department d,
(
    select e.Salary, e.DepartmentId, 
    case when  @depid = e.DepartmentId then @row := @row + 1
    when @depid := e.DepartmentId then @row := 1
    end n
    from (select DepartmentId,Salary from Employee group by DepartmentId,Salary) e, (select @depid := null) t, (select @row := 1) y
    order by e.DepartmentId, e.Salary desc
) c
where c.n <= 3
and c.DepartmentId = d.Id
and c.Salary = e.Salary
and e.DepartmentId = c.DepartmentId