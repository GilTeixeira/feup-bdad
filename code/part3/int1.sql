.mode columns
.headers on
.nullvalue NULL 

SELECT Nome, VooID
FROM Pessoa, Estado
WHERE PassageiroID=PID
ORDER BY VooID ASC