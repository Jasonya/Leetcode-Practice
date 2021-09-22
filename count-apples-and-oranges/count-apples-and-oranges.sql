# Write your MySQL query statement below
select sum(sub.apple_count) as apple_count,
    sum(sub.orange_count) as orange_count
from
(select box_id, apple_count, orange_count from Boxes 
 union all (select b.chest_id, c.apple_count, c.orange_count
           from Boxes b left join Chests c
            on b.chest_id = c.chest_id)) sub
