# Write your MySQL query statement below
with users as(
    select user1_id as ur_id, user2_id as fr_id from Friendship
    union all
    select user2_id as ur_id, user1_id as fr_id from Friendship
)

select u1.ur_id as user1_id,
    u1.fr_id as user2_id,
    count(*) as common_friend
from users u1
join users u2 on u1.fr_id = u2.ur_id and u1.ur_id <> u2.fr_id # do not want to join itself
join users u3 on u2.fr_id = u3.ur_id and u1.ur_id = u3.fr_id 
where u1.ur_id < u1.fr_id
group by 1,2 having common_friend >2

