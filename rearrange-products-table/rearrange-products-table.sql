# Write your MySQL query statement below
# select* from(
#     select Products.product_id,
#         stores.store,
#         case 
#             when store='store1' then store1
#             when store='store2' then store2
#             when store='store3' then store3 end as price from(
#                 select 'store1' as store union
#                 select 'store2' as store union
#                 select 'store3' as store) as stores cross join Products) as Result
#                     where price is not null

with Summery as (
select product_id, 'store1' as store, store1 as price from Products
union all
select product_id, 'store2' as store, store2 as price from Products
union all
select product_id, 'store3' as sotre, store3 as price from Products)

select product_id, store, price from Summery where price is not null