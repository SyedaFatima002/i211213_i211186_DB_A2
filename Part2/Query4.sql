--Query 4
SELECT COUNT(ap.HangarID) 
FROM Airplane ap
INNER JOIN Hangar hg
ON hg.HangarID=ap.HangarID AND hg.Location='Los Angeles';
