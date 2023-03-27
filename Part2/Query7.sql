--Query 7
SELECT hg.Location
FROM Hangar hg
JOIN Airplane ap ON ap.HangarID=hg.HangarID
WHERE ap.TypeID=
(SELECT TypeID
FROM PlaneType
WHERE ModelNum='Airbus A380')
GROUP BY hg.Location;
