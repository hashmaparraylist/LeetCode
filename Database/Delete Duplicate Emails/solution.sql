delete from Person
where Id in (
    select t.id
    from (
        select 
            a.id 
        from 
            Person a, 
            ( select min(Id) min_id, Email from Person group by Email) b
        where 
            a.id != b.min_id and a.Email = b.Email
    ) t
)