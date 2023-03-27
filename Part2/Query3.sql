-- Qurey 3

SELECT a.RegNum
FROM Airplane a
WHERE a.TypeID IN 
  ( SELECT p.TypeID
    FROM PlaneType p
    WHERE p.ModelNum = 'Airbus A380'  
  );
  