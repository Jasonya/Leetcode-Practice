# Write your MySQL query statement below
select problem_id
from(
    select problem_id,
        likes/(likes+dislikes) as like_percentage
    from Problems) sub
where like_percentage < 0.6
order by 1




