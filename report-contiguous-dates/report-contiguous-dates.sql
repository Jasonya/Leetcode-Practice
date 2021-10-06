# Write your MySQL query statement below
select 'failed' as period_state, min(fail_date) as start_date, max(fail_date) as end_date
from(
    select fail_date,
        date_sub(fail_date, interval row_number() over(order by fail_date) day) as idx
    from Failed
    ) a
where fail_date between '2019-01-01' and '2019-12-31'
group by a.idx

union all

select 'succeeded' as period_state, min(success_date) as start_date, max(success_date) as end_date
from(
    select success_date,
        date_sub(success_date, interval row_number() over(order by success_date) day) as idx
    from Succeeded
    ) b
where success_date between '2019-01-01' and '2019-12-31'
group by b.idx
order by start_date