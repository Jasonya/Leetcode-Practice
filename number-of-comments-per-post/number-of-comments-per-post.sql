# Write your MySQL query statement below
with post as(
    select sub_id
    from Submissions
    where parent_id is null
    group by 1
), comments as(
    select parent_id as sub_id,
        count(distinct sub_id) as cnt
    from Submissions
    group by 1
)

select p.sub_id as post_id, ifnull(cnt, 0) as number_of_comments
from post p left join comments c
on p.sub_id = c.sub_id
order by 1

