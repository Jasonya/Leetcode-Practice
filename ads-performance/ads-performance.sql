# Write your MySQL query statement below
with cte as(
select ad_id,
count(case action when 'Clicked' then 1 else null end) as Cliecked,
count(case action when 'Ingored' then null else null end) as Ignored,
count(case action when 'Viewed' then 1 else null end) as Viewed
from Ads group by 1)

select ad_id,
    ifnull(round(Cliecked/(Cliecked+Viewed)*100, 2),0) as ctr
from cte
order by 2 desc, 1 asc