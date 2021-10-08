# Write your MySQL query statement below

select i.item_category as Category,
    sum(case when dayofweek(order_date)=2 then quantity else 0 end) as 'Monday',
    sum(case when dayofweek(order_date)=3 then quantity else 0 end) as 'Tuesday',
    sum(case when dayofweek(order_date)=4 then quantity else 0 end) as 'Wednesday',
    sum(case when dayofweek(order_date)=5 then quantity else 0 end) as 'Thursday',
    sum(case when dayofweek(order_date)=6 then quantity else 0 end) as 'Friday',
    sum(case when dayofweek(order_date)=7 then quantity else 0 end) as 'Saturday',
    sum(case when dayofweek(order_date)=1 then quantity else 0 end) as 'Sunday'
from Orders o right join Items i
on o.item_id = i.item_id
group by 1
order by 1
