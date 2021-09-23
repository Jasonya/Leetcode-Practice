# Write your MySQL query statement below
with sub as(
select order_id, avg(quantity) as AvgNum, max(quantity) as MaxNum
from OrdersDetails
group by 1)

select order_id
from sub
where MaxNum > (select max(AvgNum) from sub)    


