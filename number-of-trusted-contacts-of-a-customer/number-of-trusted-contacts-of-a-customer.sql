# Write your MySQL query statement below
select i.invoice_id, c1.customer_name, i.price, count(c2.user_id) as contacts_cnt,
    count(c3.email) as trusted_contacts_cnt
from Invoices i left join Customers c1 on i.user_id = c1.customer_id
left join Contacts c2 on c1.customer_id = c2.user_id
left join Customers c3 on c2.contact_email = c3.email
group by i.invoice_id, i.user_id
order by 1
