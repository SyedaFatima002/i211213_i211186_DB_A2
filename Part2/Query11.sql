-- Query 11

SELECT p.Name
FROM Pilot pil
JOIN Person p ON pil.PersonID = p.PersonID
JOIN Authorization_ a ON pil.PilotID = a.PilotID
WHERE a.TypeID = 1;
