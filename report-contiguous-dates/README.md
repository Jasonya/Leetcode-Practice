<h2>1225. Report Contiguous Dates</h2><h3>Hard</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>Failed</code></p>

<pre>+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| fail_date    | date    |
+--------------+---------+
Primary key for this table is fail_date.
Failed table contains the days of failed tasks.
</pre>

<p>Table: <code>Succeeded</code></p>

<pre>+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| success_date | date    |
+--------------+---------+
Primary key for this table is success_date.
Succeeded table contains the days of succeeded tasks.
</pre>

<p>&nbsp;</p>

<p>A system is running one task <strong>every day</strong>. Every task is independent of the previous tasks. The tasks can fail or succeed.</p>

<p>Write an SQL query to generate a report of&nbsp;<code>period_state</code> for each continuous interval of days in the period from&nbsp;<strong>2019-01-01</strong> to <strong>2019-12-31</strong>.</p>

<p><code>period_state</code> is <em>'failed'&nbsp;</em>if tasks in this interval failed or <em>'succeeded'</em>&nbsp;if tasks in this interval succeeded. Interval of days are retrieved as <code>start_date</code> and <code>end_date.</code></p>

<p>Order result by <code>start_date</code>.</p>

<p>The query result format is in the following example:</p>

<pre>Failed table:
+-------------------+
| fail_date         |
+-------------------+
| 2018-12-28        |
| 2018-12-29        |
| 2019-01-04        |
| 2019-01-05        |
+-------------------+

Succeeded table:
+-------------------+
| success_date      |
+-------------------+
| 2018-12-30        |
| 2018-12-31        |
| 2019-01-01        |
| 2019-01-02        |
| 2019-01-03        |
| 2019-01-06        |
+-------------------+


Result table:
+--------------+--------------+--------------+
| period_state | start_date   | end_date     |
+--------------+--------------+--------------+
| succeeded    | 2019-01-01   | 2019-01-03   |
| failed       | 2019-01-04   | 2019-01-05   |
| succeeded    | 2019-01-06   | 2019-01-06   |
+--------------+--------------+--------------+

The report ignored the system state in 2018 as we care about the system in the period 2019-01-01 to 2019-12-31.
From 2019-01-01 to 2019-01-03 all tasks succeeded and the system state was "succeeded".
From 2019-01-04 to 2019-01-05 all tasks failed and system state was "failed".
From 2019-01-06 to 2019-01-06 all tasks succeeded and system state was "succeeded".
</pre>
</div>