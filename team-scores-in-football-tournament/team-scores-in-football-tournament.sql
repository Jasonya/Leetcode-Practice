# Write your MySQL query statement below
select team_id, team_name,
    SUM(CASE WHEN team_id=host_team AND host_goals>guest_goals THEN 3 ELSE 0 END)+
SUM(CASE WHEN team_id=guest_team AND guest_goals>host_goals THEN 3 ELSE 0 END)+
SUM(CASE WHEN team_id=host_team AND host_goals=guest_goals THEN 1 ELSE 0 END)+
SUM(CASE WHEN team_id=guest_team AND guest_goals=host_goals THEN 1 ELSE 0 END)as num_points
from Teams left join Matches
on team_id = host_team or team_id = guest_team
group by 1
order by 3 desc, 1 asc

