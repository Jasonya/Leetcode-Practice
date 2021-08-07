# Write your MySQL query statement below
select Name
from Vote v left join Candidate c
on v.CandidateId = c.id
group by v.CandidateId
order by count(*) desc
limit 1
