# Write your MySQL query statement below
select e.Name as Employee
from (select * from Employee) e,
(select * from Employee) m
where e.Salary > m.Salary
and e.ManagerId = m.Id