# Write your MySQL query statement below
select Email from (
select Email, count(id) n from Person group by Email) q1
where n > 1

