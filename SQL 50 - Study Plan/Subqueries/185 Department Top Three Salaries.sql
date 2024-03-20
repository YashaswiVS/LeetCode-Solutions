# Write your MySQL query statement below
SELECT d.name as Department,
    e.name as Employee,
    e.salary as Salary
FROM Department d
JOIN Employee e
ON e.departmentId = d.id
WHERE (
    SELECT COUNT(DISTINCT salary)
    FROM Employee AS emp
    WHERE emp.departmentId = d.id AND emp.salary >= e.salary
    ) 
<= 3