CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      # use dense rank here - not skip the rnk after duplicate value
      select distinct salary
      from (select salary, 
           dense_rank() over(order by salary desc) as rnk from Employee) a
      where rnk =N
  );
END



