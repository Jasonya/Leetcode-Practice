# Write your MySQL query statement below
select '[0-5>' as bin, count(duration) as total from Sessions where duration < 300
union
select '[5-10>', count(duration) from Sessions where duration between 300 and 599
union
select '[10-15>', count(duration) from Sessions where duration between 600 and 899
union
select '15 or more', count(duration) from Sessions where duration >= 900