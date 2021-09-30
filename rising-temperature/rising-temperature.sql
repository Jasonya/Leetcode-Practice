# Write your MySQL query statement below
select w1.Id as id
from Weather w1 join Weather w2
on datediff(w1.RecordDate, w2.RecordDate) = 1 and w1.Temperature > w2.Temperature



