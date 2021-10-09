# Write your MySQL query statement below
with RECURSIVE re_month as(
    select 1 as month
    union all
    select month + 1 as month
    from re_month
    where month <12
), joined_driver as(
    select driver_id, join_date,
        case when join_date <= '2020-01-01' then 1 else month(join_date) end as acu_month
    from Drivers
    where join_date <= '2020-12-31'),
act_driver as(
    select r.month as month,
        count(driver_id) over(order by month) as ar_cnt
    from re_month r left join joined_driver j
    on r.month = j.acu_month),
acc_ride as(
    select month(r.requested_at) as month
        , count(a.driver_id) as cnt_ride
    from acceptedrides a left join rides r
    on a.ride_id = r.ride_id
    where r.requested_at between '2020-01-01' and '2020-12-31'
    group by month(requested_at)



)
    
select distinct r.month as month,
    coalesce(ar_cnt, 0) as active_drivers, coalesce(ar.cnt_ride, 0) as accepted_rides
from re_month r 
left join act_driver ad on r.month = ad.month
left join acc_ride ar on r.month = ar.month