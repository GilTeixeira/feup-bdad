.mode columns
.headers on
.nullvalue NULL 

SELECT SeccaoID AS Seccao, SUM(Salario) AS Despesa
FROM (
	SELECT SeccaoID, Salario
	FROM Trabalha INNER JOIN Funcionario
	ON FuncionarioID = PFID)
GROUP BY SeccaoID