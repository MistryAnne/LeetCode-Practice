# Write your MySQL query statement below
Select name as Customers
from Customers
where id NOT IN ( Select customerId 
    from Orders);