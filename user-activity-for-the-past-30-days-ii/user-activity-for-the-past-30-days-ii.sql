# Write your MySQL query statement below
select round(ifnull(avg(ses), 0), 2) as 'average_sessions_per_user' from(
    select count(distinct session_id) as 'ses'
    from Activity
    where activity_date between '2019-06-28' and '2019-07-27'
    group by user_id) a



