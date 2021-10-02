# Write your MySQL query statement below
# select
# from(
#     select America as name, row_number() over(partition by continent order by name) as rnk







# )
select a.name as America, b.name as Asia, c.name as Europe
from(
select name, row_number() over(partition by continent order by name) as rnk
from student
where continent='America') a left join (
    select name, row_number() over(partition by continent order by name) as rnk
    from student
    where continent='Asia') b on a.rnk = b.rnk
    left join (
        select name, row_number() over(partition by continent order by name) as rnk
        from student
        where continent='Europe') c on a.rnk = c.rnk
    
    
    
    
    
                                       
                                       
                                       
                                       
                                       