# Write your MySQL query statement below
select ad_id,
    round(ifnull(sum(case when action='Clicked' then 1 else 0 end)/
    sum(case when action='Clicked' then 1 
             when action='Viewed' then 1
             else 0 end),0)*100,2) as ctr
from Ads
group by 1
order by 2 desc, 1 asc


