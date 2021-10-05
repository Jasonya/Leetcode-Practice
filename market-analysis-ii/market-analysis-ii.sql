# Write your MySQL query statement below
with cte1 as(
    select seller_id, a.item_id, item_brand as sec_sold_brand
    from
    (select seller_id, item_id , row_number() over(partition by seller_id order by          order_date) as rnk
    from Orders) a left join Items i
    on a.item_id = i.item_id
    where rnk = 2
)


select u.user_id as seller_id,
    case when favorite_brand = sec_sold_brand then 'yes' else 'no' end as 2nd_item_fav_brand
from Users u left join cte1
on u.user_id = cte1.seller_id

