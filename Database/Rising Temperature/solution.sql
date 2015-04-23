# Write your MySQL query statement below
select b.Id
from Weather a,
Weather b
where b.Temperature > a.Temperature
and TIMESTAMPDIFF(DAY,b.Date,a.Date) = -1
order by b.Id