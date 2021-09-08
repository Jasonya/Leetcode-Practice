# Write your MySQL query statement below
# select o.buyer_id, u.join_date,
#     sum(case when year(o.order_date) = '2019' then 1 else 0 end) as orders_in_2019
# from Orders o left join Users u
# on o.buyer_id = u.user_id
# group by 1
# order by 1



select user_id as buyer_id, join_date, 
    ifnull(count(order_date), 0) as orders_in_2019
from Users u left join Orders o
on u.user_id = o.buyer_id and year(order_date) = '2019'
group by 1