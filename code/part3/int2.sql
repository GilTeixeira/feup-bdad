.mode columns
.headers on
.nullvalue NULL 

SELECT AID AS Aviao, Capacidade AS Capacidade
FROM Aviao, Modelo
WHERE Capacidade=(SELECT max(Capacidade) FROM Modelo) AND MNome=ModeloNome
