<h2>615. Average Salary: Departments VS Company</h2><h3>Hard</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div>Given two tables as below, write a query to display the comparison result (higher/lower/same) of the average salary of employees in a department to the company's average salary.
<p>&nbsp;</p>
Table: <code>salary</code>

<pre>| id | employee_id | amount | pay_date   |
|----|-------------|--------|------------|
| 1  | 1           | 9000   | 2017-03-31 |
| 2  | 2           | 6000   | 2017-03-31 |
| 3  | 3           | 10000  | 2017-03-31 |
| 4  | 1           | 7000   | 2017-02-28 |
| 5  | 2           | 6000   | 2017-02-28 |
| 6  | 3           | 8000   | 2017-02-28 |
</pre>

<p>&nbsp;</p>
The <b>employee_id</b> column refers to the <b>employee_id</b> in the following table <code>employee</code>.

<p>&nbsp;</p>

<pre>| employee_id | department_id |
|-------------|---------------|
| 1           | 1             |
| 2           | 2             |
| 3           | 2             |
</pre>

<p>&nbsp;</p>
So for the sample data above, the result is:

<p>&nbsp;</p>

<pre>| pay_month | department_id | comparison  |
|-----------|---------------|-------------|
| 2017-03   | 1             | higher      |
| 2017-03   | 2             | lower       |
| 2017-02   | 1             | same        |
| 2017-02   | 2             | same        |
</pre>

<p>&nbsp;</p>
<b>Explanation</b>

<p>&nbsp;</p>
In March, the company's average salary is (9000+6000+10000)/3 = 8333.33...

<p>&nbsp;</p>
The average salary for department '1' is 9000, which is the salary of <b>employee_id</b> '1' since there is only one employee in this department. So the comparison result is 'higher' since 9000 &gt; 8333.33 obviously.

<p>&nbsp;</p>
The average salary of department '2' is (6000 + 10000)/2 = 8000, which is the average of <b>employee_id</b> '2' and '3'. So the comparison result is 'lower' since 8000 &lt; 8333.33.

<p>&nbsp;</p>
With he same formula for the average salary comparison in February, the result is 'same' since both the department '1' and '2' have the same average salary with the company, which is 7000.

<p>&nbsp;</p>
</div>