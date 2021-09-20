# Write your MySQL query statement below
select sub2.customer_id, sub2.product_id, p.product_name
from(
select customer_id, product_id, cnt, dense_rank() over (partition by customer_id order by cnt desc) as rnk
    from
        (select customer_id, product_id, count(product_id) as cnt
            from Orders 
            group by 1,2) sub1
)sub2 left join Products p
on sub2.product_id = p.product_id
where rnk=1


