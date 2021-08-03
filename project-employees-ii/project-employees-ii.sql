# Write your MySQL query statement below


select project_id from(
    select project_id,
    rank() over(order by count(distinct employee_id) desc) as rnk
    from project group by 1) sub
where rnk = 1