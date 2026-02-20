# Write your MySQL query statement below
SELECT d.name as department, e.name as employee, e.salary as Salary 
FROM employee e
JOIN Department d
on e.departmentid = d.id
WHERE (e.departmentId, e.salary) IN (
    SELECT departmentId, MAX(salary)
    FROM Employee
    GROUP BY departmentId
);


