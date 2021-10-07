# Write your MySQL query statement below
select username, activity, startDate, endDate
from(
    select *,
        rank() over(partition by username order by startDate desc) as rnk
    from UserActivity) a
where rnk = 2
union all
select username, activity, startDate, endDate
from UserActivity
group by username having count(*) = 1
