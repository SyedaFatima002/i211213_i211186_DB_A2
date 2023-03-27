--Query 1
SELECT ap.RegNum
FROM Airplane ap
INNER JOIN Hangar hg
ON hg.Location='Pakistan' AND ap.HangarID=hg.HangarID;
