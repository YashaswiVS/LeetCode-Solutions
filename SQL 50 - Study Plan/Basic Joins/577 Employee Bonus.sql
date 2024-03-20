# Write your MySQL query statement below
SELECT e.name, b.bonus 
FROM Employee e
LEFT JOIN Bonus b ON b.empId = e.empId 
WHERE b.bonus < 1000 
OR e.empId NOT IN(SELECT empId from Bonus);
