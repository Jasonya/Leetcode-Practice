# Write your MySQL query statement below
with combo as(
    select * from (
        select 'Android' as platform
        union
        select 'IOS' as platfrom
        union
        select 'Web' as platform) a
        join (
        select 'Programming' as experiment_name
        union 
        select 'Sports' as experiment_name
        union
        select 'Reading' as experiment_name) b
)
        

select c.platform, c.experiment_name, count(e.experiment_name) as num_experiments
from combo c left join Experiments e
on c.platform = e.platform and c.experiment_name = e.experiment_name
group by c.platform, c.experiment_name