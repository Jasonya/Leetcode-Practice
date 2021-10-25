# Write your MySQL query statement below



select distinct user1_id, user2_id
from Friendship fr left join Listens l1 on fr.user1_id = l1.user_id
left join Listens l2 on fr.user2_id = l2.user_id
where l1.song_id = l2.song_id and l1.day = l2.day 
group by l1.day, fr.user1_id, fr.user2_id
having count(distinct l1.song_id) >= 3