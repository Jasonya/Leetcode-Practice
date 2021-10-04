# Write your MySQL query statement below
with act as(
    select player_id, device_id, event_date,
        min(event_date) over(partition by player_id) as installed_date,
        lead(event_date, 1) over(partition by player_id order by event_date) as next_play_date
    from Activity
)

select installed_date as install_dt,
    count(player_id) as installs,
    round(sum(case when next_play_date - installed_date = 1 then 1 else 0 end) / count(player_id),2) as Day1_retention
from act
where event_date = installed_date
group by 1
order by 1


