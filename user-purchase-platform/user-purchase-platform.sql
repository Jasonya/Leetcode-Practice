# Write your MySQL query statement below
with cte as(
    select distinct spend_date, 'desktop' platform from spending
    union
    select distinct spend_date, 'mobile' platform from spending
    union
    select distinct spend_date, 'both' platform from spending
)

select c.spend_date, c.platform, IFNULL(total_amount,0) total_amount, IFNULL(total_users,0) total_users from(
select spend_date, platform, sum(amount) as total_amount, count(distinct user_id) as total_users
from(

    select user_id, spend_date, 
        case when counts = 2 then 'both' else platform end as platform, amount
    from(
    select *, count(*) over(partition by user_id, spend_date) as counts
    from spending) a) b
    group by 1,2) t
right join cte c
on t.spend_date = c.spend_date and t.platform = c.platform