-- Query 12

SELECT p.Name
FROM Pilot pil
JOIN Person p ON pil.PersonID = p.PersonID
JOIN Authorization_ a ON pil.PilotID = a.PilotID
JOIN PlaneType pt ON a.TypeID = pt.TypeID
WHERE pt.ModelNum = 'Airbus A380';