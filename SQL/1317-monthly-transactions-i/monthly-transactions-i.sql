/* Write your PL/SQL query statement below */
Select TO_CHAR(t.trans_date, 'YYYY-MM') as "month", t.country as "country", Count(*) as "trans_count", Count(a.id) as "approved_count", Sum(t.amount) as "trans_total_amount", NVL(sum(a.amount), 0) as "approved_total_amount"
from Transactions t left join (Select id, amount, country, trans_date
from Transactions 
where state = 'approved' ) a
on t.id = a.id
Group by t.country, TO_CHAR(t.trans_date, 'YYYY-MM'); 