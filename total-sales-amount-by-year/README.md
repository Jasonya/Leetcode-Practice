<h2>1384. Total Sales Amount by Year</h2><h3>Hard</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>Product</code></p>

<pre>+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| product_name  | varchar |
+---------------+---------+
product_id is the primary key for this table.
product_name is the name of the product.
</pre>

<p>&nbsp;</p>

<p>Table: <code>Sales</code></p>

<pre>+---------------------+---------+
| Column Name         | Type    |
+---------------------+---------+
| product_id          | int     |
| period_start        | date    |
| period_end          | date    |
| average_daily_sales | int     |
+---------------------+---------+
product_id is the primary key for this table. 
period_start&nbsp;and period_end&nbsp;indicates the start and end date for sales period, both dates are inclusive.
The average_daily_sales column holds the average daily&nbsp;sales amount of the items for the&nbsp;period.

</pre>

<p>Write an SQL query to&nbsp;report the&nbsp;Total sales&nbsp;amount of each item for each year, with corresponding product name,&nbsp;product_id, product_name and report_year.</p>

<p>Dates of the sales years are between 2018 to 2020.&nbsp;Return the result table <strong>ordered</strong> by product_id and report_year.</p>

<p>The query result format is in the following example:</p>

<pre><code>Product</code> table:
+------------+--------------+
| product_id | product_name |
+------------+--------------+
| 1          | LC Phone     |
| 2          | LC T-Shirt   |
| 3          | LC Keychain  |
+------------+--------------+

<code>Sales</code> table:
+------------+--------------+-------------+---------------------+
| product_id | period_start | period_end  | average_daily_sales |
+------------+--------------+-------------+---------------------+
| 1          | 2019-01-25   | 2019-02-28  | 100                 |
| 2          | 2018-12-01   | 2020-01-01  | 10                  |
| 3          | 2019-12-01   | 2020-01-31  | 1                   |
+------------+--------------+-------------+---------------------+

Result table:
+------------+--------------+-------------+--------------+
| product_id | product_name | report_year | total_amount |
+------------+--------------+-------------+--------------+
| 1          | LC Phone     |    2019     | 3500         |
| 2          | LC T-Shirt   |    2018     | 310          |
| 2          | LC T-Shirt   |    2019     | 3650         |
| 2          | LC T-Shirt   |    2020     | 10           |
| 3          | LC Keychain  |    2019     | 31           |
| 3          | LC Keychain  |    2020     | 31           |
+------------+--------------+-------------+--------------+
LC Phone was sold for the period of 2019-01-25 to 2019-02-28, and there are 35 days for this period. Total amount 35*100 = 3500.&nbsp;
LC T-shirt was sold for the period of 2018-12-01&nbsp;to 2020-01-01, and there are 31, 365, 1 days for years 2018, 2019 and 2020 respectively.
LC Keychain was sold for the period of 2019-12-01&nbsp;to 2020-01-31, and there are 31, 31 days for years 2019 and 2020 respectively.
</pre>
</div>