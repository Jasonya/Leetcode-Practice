# Write your MySQL query statement below
with new as(
    select r1.user_id as user1_id, r2.user_id as user2_id, count(distinct r1.follower_id) as common
    from Relations r1 join Relations r2
    on r1.follower_id = r2.follower_id and r1.user_id < r2.user_id
    group by r1.user_id, r2.user_id
)

select user1_id, user2_id
from new
where common = (select max(common) from new)