# Write your MySQL query statement below
with cte as(
    select employee_id, avg(amount) as amount, left(pay_date, 7) as pay_month
    from salary
    group by 3
)

select a.pay_month, a.department_id,
    case
        when a.amount > cte.amount then 'higher'
        when a.amount = cte.amount then 'same'
        else 'lower' end as comparison
from(
    select left(s.pay_date, 7) as pay_month, e.department_id, avg(amount) as amount
    from salary s left join employee e on s.employee_id=e.employee_id
    group by 1, 2) a left join cte on a.pay_month = cte.pay_month


