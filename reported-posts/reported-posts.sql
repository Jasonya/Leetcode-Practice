# Write your MySQL query statement below
select extra as report_reason,
    count(distinct post_id) as report_count
from Actions
where datediff('2019-07-05', action_date) = 1 and action = 'report'
group by 1

