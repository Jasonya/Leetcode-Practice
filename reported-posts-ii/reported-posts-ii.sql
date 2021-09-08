# Write your MySQL query statement below

select
    round(avg(cnt),2) as average_daily_percent from(
select count(distinct r.post_id)/ count(distinct a.post_id)*100 as cnt
from Actions a left join Removals r
on a.post_id = r.post_id
where action = 'report' and extra = 'spam'
group by a.action_date) sub