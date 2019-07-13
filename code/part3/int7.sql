.mode columns
.headers on
.nullvalue NULL 

SELECT MNome AS Modelo
FROM Modelo
WHERE Capacidade >= 50 AND Capacidade <= 100 
