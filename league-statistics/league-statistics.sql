# Write your MySQL query statement below
with sub as (

(select home_team_id as team_id,
    home_team_goals as team_goals_for,
    away_team_goals as team_goals_against,
    case 
        when home_team_goals > away_team_goals then 3
        when home_team_goals = away_team_goals then 1
        else 0 end as points
    from Matches)
union all
    
(select away_team_id as team_id,
    away_team_goals as team_goals_for,
    home_team_goals as team_goals_against,
    case 
        when away_team_goals > home_team_goals then 3
        when away_team_goals = home_team_goals then 1
        else 0 end as points
    from Matches)

)




select team_name,
    count(sub.team_id) as matches_played,
    sum(points) as points,
    sum(team_goals_for) as goal_for,
    sum(team_goals_against) as goal_against,
    sum(team_goals_for)-sum(team_goals_against) as goal_diff
from sub left join Teams t
on sub.team_id = t.team_id
group by 1
order by points desc, goal_diff desc, team_name