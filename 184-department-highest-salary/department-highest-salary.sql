# Write your MySQL query statement below
SELECT 
d.name as Department,
e.name as employee,
e.salary as Salary 
FROM Employee e
JOIN Department d 
ON e.departmentid = d.id
where (e.departmentId, e.salary) IN 
(select departmentid, MAX(salary)
from Employee
GROUP BY departmentId);


