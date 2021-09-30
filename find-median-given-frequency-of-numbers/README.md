<h2>571. Find Median Given Frequency of Numbers</h2><h3>Hard</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>The <code>Numbers</code> table keeps the value of number and its frequency.</p>

<pre>+----------+-------------+
|  Number  |  Frequency  |
+----------+-------------|
|  0       |  7          |
|  1       |  1          |
|  2       |  3          |
|  3       |  1          |
+----------+-------------+
</pre>

<p>In this table, the numbers are <code>0, 0, 0, 0, 0, 0, 0, 1, 2, 2, 2, 3</code>, so the median is <code>(0 + 0) / 2 = 0</code>.</p>

<pre>+--------+
| median |
+--------|
| 0.0000 |
+--------+
</pre>

<p>Write a query to find the median of all numbers and name the result as <code>median</code>.</p>
</div>