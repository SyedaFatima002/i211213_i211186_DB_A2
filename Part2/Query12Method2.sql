--Query 12 Method 2
SELECT p.Name
FROM Person p
JOIN Pilot plt ON p.PersonID=plt.PersonID
JOIN Authorization_ auth ON auth.PilotID=plt.PilotID
WHERE auth.TypeID=
(SELECT TypeID
FROM PlaneType
WHERE ModelNum='Airbus A380');
