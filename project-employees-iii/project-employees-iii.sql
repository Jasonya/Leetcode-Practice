# Write your MySQL query statement below
Select a.project_id , a.employee_id From (
Select p.* , Rank() Over (Partition by project_id order by experience_years desc) as Rnk From project p
left join
Employee emp
on p.employee_id = emp.employee_id) a where a.Rnk = 1
