# Write your MySQL query statement below
select location as country
from Calls c left join (
    select id, p.name, c.name as location
    from Person p left join Country c
    on left(p.phone_number,3) = c.country_code
) sub
on c.caller_id = sub.id or c.callee_id = sub.id
group by location
having avg(duration) > (select avg(duration) from Calls)


