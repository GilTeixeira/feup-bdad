CREATE TRIGGER AumentarSalario
AFTER INSERT ON Trabalha
FOR EACH ROW
BEGIN 
	UPDATE Funcionario
    SET Salario = Salario + 250
    WHERE PFID = New.FuncionarioID;
END;

