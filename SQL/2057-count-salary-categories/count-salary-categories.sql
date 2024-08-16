# Write your MySQL query statement below
Select "Low Salary" as category, Count(*) as accounts_count
from Accounts
where income < 20000
Union
Select "Average Salary" as category, Count(*) as accounts_count
from Accounts
where income >= 20000 and income <= 50000
Union
Select "High Salary" as category, Count(*) as accounts_count
from Accounts
where income > 50000;