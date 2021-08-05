# Write your MySQL query statement below
select country_name, 
    case when avg(w.weather_state) <= 15 then 'Cold'
        when avg(w.weather_state) >= 25 then 'Hot'
        else 'Warm' end as weather_type
from Weather w left join Countries c
on w.country_id = c.country_id
where date_format(w.day, '%Y-%m') = '2019-11'
group by 1
