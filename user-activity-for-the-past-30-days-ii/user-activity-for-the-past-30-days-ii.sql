# Write your MySQL query statement below
select round(ifnull(sum(cnt)/count(user_id), 0),2) as average_sessions_per_user
from(
    select user_id, count(distinct session_id) as cnt
    from Activity
    where datediff('2019-07-27', activity_date) < 30
    group by 1)sub








