-- Query 5

SELECT Person.Address
FROM Pilot
JOIN Person ON Pilot.PersonID = Person.PersonID
WHERE Pilot.LiscenceNum = 'P2345678';
