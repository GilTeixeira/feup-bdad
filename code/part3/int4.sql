.mode columns
.headers on
.nullvalue NULL 

SELECT VID, count(*) AS Em Falta
FROM Voo, Estado
WHERE CheckedIn = 1 AND Boarded = 0 AND Estado.VooId = Voo.VID
GROUP BY VID