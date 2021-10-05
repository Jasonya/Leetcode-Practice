# Write your MySQL query statement below
# with cte as(
#     select player_id, scores
#     from(
#     select first_player as player_id, first_score as scores
#     from Matches 
#     union 
#     select second_player as player_id, second_score as scores
#     from Matches) a
#     group by 1
# )


# select group_id, p.player_id, sum(scores)
# from cte left join Players p
# on cte.player_id = p.player_id
# group by p.group_id, cte.player_id\

# select group_id, player_id
# from(
#     select group_id, player_id,
#         rank() over(partition by group_id order by ttls desc, player_id asc) as rnk
#     from(
#         select group_id, cte.player_id, sum(scores) as ttls
#         from cte left join Players p
#         on cte.player_id = p.player_id
#         group by player_id, group_id) b
#     ) c
# where rnk = 1


with c as (
    select player_id, group_id, sum(score) as tts
    from (
        select first_player as player_id, first_score as score from matches
        union all
        select second_player as player_id, second_score as score from matches
    ) x
    left join players
    using (player_id)
    group by player_id, group_id
), c2 as (
    select group_id, player_id, rank() over (partition by group_id order by tts desc, player_id asc) as rk
    from c
)
select group_id, player_id
from c2
where rk=1;