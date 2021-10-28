# Write your MySQL query statement below
select contest_id, round(count(distinct s.user_id)/(select count(user_id) from Users)*100,2) as percentage
from Register r left join Users s
on r.user_id = s.user_id
where user_name is not null
group by 1
order by 2 desc, 1 asc
