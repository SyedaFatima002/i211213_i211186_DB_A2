-- Query 2

SELECT a.RegNum
FROM Airplane a
WHERE a.HangarID IN 
  (SELECT h.HangarID
   FROM Hangar h
   WHERE  h.Location = 'New York');
