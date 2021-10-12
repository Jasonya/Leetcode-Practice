# Write your MySQL query statement below
with RECURSIVE remonth as(
    select 1 as month
    union all
    select month +1
    from remonth
    where month < 12
), rideInfo as(
    select month(requested_at) as month, sum(ride_distance) as dis, sum(ride_duration) as dur
    from Rides r right join AcceptedRides a
    on r.ride_id = a.ride_id
    where requested_at between '2020-01-01' and '2020-12-31'
    group by 1
    order by 1
), monthT as(
    select r1.month,
        ifnull(dis, 0) as dis, ifnull(dur, 0) as dur
    from remonth r1 left join rideInfo r2
    on r1.month = r2.month
)

select *
from (
    select month, 
        round(avg(dis) over(order by month desc range between 2 preceding and current row), 2) as average_ride_distance,
        round(avg(dur) over(order by month desc range between 2 preceding and current row), 2) as average_ride_duration
    from monthT t
    order by t.month asc) as t
where t.month <11
     
     
    
     
