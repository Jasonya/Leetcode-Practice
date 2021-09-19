# Write your MySQL query statement below
select s1.company_id, s1.employee_id, s1.employee_name,
    round(case 
        when sub.class = 0 then salary
        when sub.class = 1 then salary*0.76
        else salary*0.51 end, 0) as salary
from Salaries s1 left join(
    select company_id,
        case 
            when max(salary) < 1000 then 0
            when max(salary) >= 1000 and max(salary) <= 10000 then 1
            else 2 end as class
    from Salaries
    group by company_id

)sub
on s1.company_id = sub.company_id