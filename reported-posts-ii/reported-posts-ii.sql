# Write your MySQL query statement below
select round(avg(percentage), 2) as average_daily_percent
from(
    select count(distinct r.post_id)/count(distinct a.post_id)*100 as percentage
    from Actions a left join Removals r
    on a.post_id = r.post_id
    where action='report' and extra='spam'
    group by action_date) sub