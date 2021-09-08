/* Write your T-SQL query statement below */
select *
from(
    select product_id, store, price from Products
)T1
PIVOT
(max(price) for store in ( [store1], [store2], [store3])

)T2