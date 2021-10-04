# Write your MySQL query statement below
# Distinct xx, xx return the uniqle composition
select
ifnull(round((select count(distinct requester_id, accepter_id) from RequestAccepted) 
/
(select count(distinct sender_id, send_to_id) from FriendRequest), 2),0) as accept_rate
        