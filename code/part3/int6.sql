.mode columns
.headers on
.nullvalue NULL 

SELECT SeccaoID, count(*) AS Funcionarios
FROM Trabalha
GROUP BY SeccaoID
