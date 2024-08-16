# Write your MySQL query statement below
Select contest_id, Round(Count(Distinct user_id) *100 / (Select Count(*) from Users), 2) as percentage
from Register
Group by contest_id
Order by percentage DESC, contest_id ASC;