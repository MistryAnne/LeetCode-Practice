/* Write your PL/SQL query statement below */
Select MAX(salary) as "SecondHighestSalary"
from Employee
where salary < (Select MAX(salary) from Employee); 