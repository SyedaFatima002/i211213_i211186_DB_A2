--Query 6
SELECT p.Name
FROM Employee emp
JOIN Person p ON p.PersonID=emp.PersonID
WHERE emp.Salary=
(SELECT MAX(Salary) 
FROM Employee);
