# Write your MySQL query statement below
with c as(
    # calculate the number of different snog for each user pair in each day
    select l1.user_id as uid1, l2.user_id as uid2, count(distinct l1.song_id) as cnt 
    from Listens l1 join Listens l2
    on l1.song_id = l2.song_id and l1.day = l2.day and l1.user_id <> l2.user_id
    group by l1.user_id,l2.user_id,l1.day 
    having cnt>=3
), f as(
    select user1_id, user2_id
    from Friendship
    union
    select user2_id, user1_id
    from Friendship
)


select uid1 as user_id, uid2 as recommended_id
from c 
where (uid1, uid2) not in (select user1_id, user2_id from f)
group by uid1, uid2