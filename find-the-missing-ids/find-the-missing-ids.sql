# Write your MySQL query statement below
with recursive seq as(
    select 1 as ids
    union all select ids+1 from seq
    where ids < (select max(customer_id) from Customers) and ids <100
)

select * 
from seq
where ids not in (select customer_id from Customers)