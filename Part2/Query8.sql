-- Query 8 

SELECT a.RegNum
FROM Airplane a
LEFT JOIN ServiceRecord ON a.RegNum = ServiceRecord.AirplaneRegNum
WHERE ServiceRecord.AirplaneRegNum IS NULL;
