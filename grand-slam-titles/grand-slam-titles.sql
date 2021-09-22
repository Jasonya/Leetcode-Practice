# Write your MySQL query statement below
select sub.Wimbledon as player_id,
    p.player_name,
    count(sub.Wimbledon) as  grand_slams_count
from
(select Wimbledon from Championships
union all select Fr_open from Championships
union all select US_open from Championships
union all select Au_open from Championships) sub left join Players p
on sub.Wimbledon = p.player_id
group by 1,2

