<h2>602. Friend Requests II: Who Has the Most Friends</h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>In social network like Facebook or Twitter, people send friend requests and accept others' requests as well.</p>

<p>&nbsp;</p>

<p>Table <code>request_accepted</code></p>

<pre>+--------------+-------------+------------+
| requester_id | accepter_id | accept_date|
|--------------|-------------|------------|
| 1            | 2           | 2016_06-03 |
| 1            | 3           | 2016-06-08 |
| 2            | 3           | 2016-06-08 |
| 3            | 4           | 2016-06-09 |
+--------------+-------------+------------+
This table holds the data of friend acceptance, while <b>requester_id</b> and <b>accepter_id</b> both are the id of a person.
</pre>

<p>&nbsp;</p>

<p>Write a query to find the the people who has most friends and the most friends number under the following rules:</p>

<ul>
	<li>It is guaranteed there is only 1 people having the most friends.</li>
	<li>The friend request could only been accepted once, which mean there is no multiple records with the same <b>requester_id</b> and <b>accepter_id</b> value.</li>
</ul>

<p>For the sample data above, the result is:</p>

<pre>Result table:
+------+------+
| id   | num  |
|------|------|
| 3    | 3    |
+------+------+
The person with id '3' is a friend of people '1', '2' and '4', so he has 3 friends in total, which is the most number than any others.
</pre>

<p><b>Follow-up:</b><br>
In the real world, multiple people could have the same most number of friends, can you find all these people in this case?</p>
</div>