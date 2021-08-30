# Write your MySQL query statement below
select activity_date as login_date, count(1) as user_count from
(select user_id, activity, min(activity_date) as activity_date
from Traffic
where activity = 'login'
group by user_id) a
where datediff('2019-06-30', activity_date) <= 90
group by 1