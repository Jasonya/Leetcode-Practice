# Write your MySQL query statement below
select user_id,
    max(coalesce(datediff(next_visit, visit_date), datediff('2021-1-1', visit_date))) as biggest_window
from(
    select
            user_id,
            visit_date, 
            LEAD(visit_date,1) OVER (PARTITION BY user_id ORDER BY visit_date ASC) AS next_visit
        from UserVisits)sub
group by user_id