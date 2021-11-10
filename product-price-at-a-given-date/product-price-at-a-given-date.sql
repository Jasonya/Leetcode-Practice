# Write your MySQL query statement below
# select distinct a.product_id, ifnull(temp.new_price,10) as price
# from Products as a
# left join
# (SELECT * 
# FROM products 
# WHERE (product_id, change_date) in (select product_id,max(change_date) from products where change_date<="2019-08-16" group by product_id)) as temp
# on a.product_id = temp.product_id;


select product_id, new_price as price from(
select product_id, new_price,
    rank() over(partition by product_id order by change_date desc) as rnk
from Products
where change_date <= '2019-08-16') sub
where rnk = 1
union 
select product_id, 10 as price
from Products
where change_date > '2019-08-16' and product_id not in (select product_id from Products
                                                       where change_date<= '2019-08-16')