# Write your MySQL query statement below
select c.country_name,
    case 
        when avg(weather_state) <= 15 then 'Cold' 
        when avg(weather_state) >= 25 then 'Hot'
        else 'Warm' end as weather_type 
from Countries c left join Weather w
on c.country_id = w.country_id
where left(day, 7) = '2019-11'
group by 1
