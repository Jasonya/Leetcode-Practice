# Write your MySQL query statement below
with RECURSIVE remonth as(
    select 1 as month
    union all
    select month+1
    from remonth
    where month<12
), act_driver as(
    select driver_id, join_date, 
        case when join_date <= '2020-01-01' then 1 else month(join_date) end as act_month
    from Drivers
    where join_date <= '2020-12-31'
), act_driver2 as(
    select r.month as month,
        count(driver_id) over(order by month) as ar_cnt
    from remonth r left join act_driver ad
    on r.month = ad.act_month
), acc_ride as(
    select month(requested_at) as month,
        count(distinct a.driver_id) as cnt_ride
    from Acceptedrides a left join Rides r
    on a.ride_id = r.ride_id
    where requested_at between '2020-01-01' and '2020-12-31'
    group by 1
)



select distinct r.month,
    case when ad.ar_cnt = 0 then 0
        else cast(ifnull(cnt_ride, 0)*100.0/ad.ar_cnt as decimal(5,2))
        end as working_percentage
from remonth r
left join act_driver2 ad on r.month = ad.month
left join acc_ride ar on r.month = ar.month



