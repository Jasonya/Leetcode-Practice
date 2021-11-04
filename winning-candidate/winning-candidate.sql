# Write your MySQL query statement below
select name
from Vote v left join Candidate c
on c.id = v.candidateId
group by candidateId
order by count(candidateId) desc
limit 1
