# Write your MySQL query statement below
(select u.name as results
from Movie_Rating mr left join Users u
on mr.user_id = u.user_id
group by mr.user_id
order by count(mr.user_id) desc, u.name
limit 1)

union(
    
select m.title as results
from Movie_Rating mr left join Movies m
on mr.movie_id = m.movie_id
where mr.created_at like '2020-02%'
group by mr.movie_id
order by avg(mr.rating) desc, m.title
limit 1

)