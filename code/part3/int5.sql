.mode columns
.headers on
.nullvalue NULL 

SELECT VooID, sum(Peso) AS Peso
FROM Transporta, Bagagem
WHERE Transporta.BagagemID = Bagagem.BID
GROUP BY VooID