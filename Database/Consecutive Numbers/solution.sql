# Write your MySQL query statement below
select distinct c.Num
from(
select a.Id as a_Id ,b.Id b_Id , a.Num
from Logs a,
Logs b
where a.Num = b.Num
and a.Id = b.Id - 1
) c,
(
select a.Id as a_Id ,b.Id b_Id , a.Num
from Logs a,
Logs b
where a.Num = b.Num
and a.Id = b.Id - 1
) d
where c.a_Id = d.b_Id