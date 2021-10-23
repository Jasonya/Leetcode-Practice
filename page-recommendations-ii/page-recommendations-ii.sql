# Write your MySQL query statement below
WITH all_friends as(
SELECT user1_id as u1, user2_id as u2
FROM Friendship
UNION ALL 
SELECT user2_id as u1, user1_id as u2
FROM Friendship
)

SELECT af.u1 AS user_id, l1.page_id, COUNT(*) AS friends_likes
FROM all_friends AS af
JOIN Likes AS l1 ON l1.user_id = af.u2
LEFT JOIN Likes AS l2 ON l2.user_id = af.u1 AND l1.page_id = l2.page_id
WHERE l2.user_id is null
GROUP BY af.u1,l1.page_id