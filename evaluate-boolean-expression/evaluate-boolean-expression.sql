# Write your MySQL query statement below
select e1.left_operand, e1.operator, e1.right_operand,
    case 
        when operator = '>' and v1.value > v2.value then 'true'
        when operator = '=' and v1.value = v2.value then 'true'
        when operator = '<' and v1.value < v2.value then 'true'
        else 'false' end as value
from Expressions e1 left join Variables v1 on e1.left_operand = v1.name
left join Variables v2 on e1.right_operand = v2.name