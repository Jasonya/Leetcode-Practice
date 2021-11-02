# Write your MySQL query statement below
select round(count(distinct player_id) / (select count(distinct player_id) from Activity),2) as fraction
from (select player_id,
      event_date,
      min(event_date) over(partition by player_id) as first_date
      from Activity
     ) sub
where datediff(event_date, sub.first_date) = 1


# select round(count(player_id) / (select count(distinct player_id) from Activity), 2)
# as fraction
# from Activity
# where (player_id,event_date) in
# (select player_id, date_add(min(event_date),interval 1 day) as event_date from Activity group by 1)