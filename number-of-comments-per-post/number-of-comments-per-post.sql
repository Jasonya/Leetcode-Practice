# Write your MySQL query statement below
with post as (
select sub_id as post_id
from Submissions
where parent_id is null
group by 1),

comment as (
select count(distinct sub_id) as cnt, parent_id as post_id
from Submissions 
group by 2)

select p.post_id, ifnull(c.cnt, 0) as number_of_comments
from post p left join comment c
on p.post_id = c.post_id
order by 1
