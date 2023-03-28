--Query 10
SELECT p.Name
FROM Person p
INNER JOIN Employee emp ON emp.PersonID=p.PersonID
INNER JOIN ServiceRecord sr ON sr.EmployeeID=emp.EmployeeID
WHERE sr.AirplaneRegNum = 'N123';
