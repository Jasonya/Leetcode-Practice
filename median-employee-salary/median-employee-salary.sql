# Write your MySQL query statement below
select Id, Company, Salary
from(
select *,
    row_number() over(partition by Company order by Salary) as c_salary,
    count(Id) over(partition by Company) as c_employee
from Employee ) a
where c_salary >= c_employee/2 and c_salary <= c_employee/2 + 1
