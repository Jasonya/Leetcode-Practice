# Write your MySQL query statement below
with temp as(
    select Number,
        sum(frequency) over(order by number) as fre_les,
        sum(frequency) over(order by number desc) as fre_gtr,
        sum(frequency) over() as total
    from Numbers
)

select avg(number) as median
from temp
where 2*fre_les >= total and 2*fre_gtr >= total


