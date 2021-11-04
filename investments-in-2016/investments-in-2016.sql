# Write your MySQL query statement below
with cte as(
    select tiv_2015, tiv_2016, concat(lat, ',', lon) as geolocation
    from Insurance
)

select round(sum(tiv_2016),2) as tiv_2016
from cte
where geolocation not in (select geolocation from cte group by 1 having count(*) > 1)
and tiv_2015 not in (select tiv_2015 from cte group by 1 having count(*)=1)






