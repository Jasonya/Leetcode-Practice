# Write your MySQL query statement below
select distinct a.product_id, ifnull(temp.new_price,10) as price
from Products as a
left join
(SELECT * 
FROM products 
WHERE (product_id, change_date) in (select product_id,max(change_date) from products where change_date<="2019-08-16" group by product_id)) as temp
on a.product_id = temp.product_id;