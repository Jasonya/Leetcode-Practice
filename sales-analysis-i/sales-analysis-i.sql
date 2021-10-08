# Write your MySQL query statement below
select seller_id from(
    select seller_id,
     rank() over(order by sum(price) desc) as rnk
    from Sales
    group by 1) sub
where rnk=1




    