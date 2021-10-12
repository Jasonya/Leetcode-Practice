# Write your MySQL query statement below
select
 round(100*(select count(delivery_id)
from Delivery 
where order_date = customer_pref_delivery_date)
/
(select count(*) from Delivery), 2) as immediate_percentage




