# Write your MySQL query statement below
# Distinct xx, xx return the uniqle composition
SELECT 
ROUND (
        IFNULL(
            (SELECT count(DISTINCT requester_id, accepter_id) FROM RequestAccepted) /
            (SELECT count(DISTINCT sender_id, send_to_id) FROM FriendRequest), 0)
        , 2) AS accept_rate
