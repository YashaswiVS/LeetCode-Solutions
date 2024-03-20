
SELECT 
    e1.name
FROM 
    Employee e1
JOIN 
    Employee e2
ON 
    e1.id = e2.managerId
GROUP BY 
   e2.managerId 
HAVING COUNT(e2.id) > 4;