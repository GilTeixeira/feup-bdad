CREATE TRIGGER ValidaNumeroDeAviaoesHangar
BEFORE INSERT ON Aviao
FOR EACH ROW
BEGIN 
SELECT CASE 
WHEN ((SELECT COUNT(*) FROM 
	 Aviao
	 WHERE Aviao.HangarID=NEW.HangarID
	)>= (SELECT Capacidade
		FROM Hangar
		Where HID=NEW.HangarID)
	) 
THEN RAISE(ABORT, 'Hangar ja se encontra cheio.')
END; 
END;

CREATE TRIGGER ValidaUpdateHangarDeAviao
BEFORE Update Of HangarID ON Aviao
FOR EACH ROW
BEGIN 
SELECT CASE 
WHEN ((SELECT COUNT(*) FROM 
	 Aviao
	 WHERE Aviao.HangarID=NEW.HangarID
	)>= (SELECT Capacidade
		FROM Hangar
		Where HID=NEW.HangarID)
	) 
THEN RAISE(ABORT, 'Novo Hangar ja se encontra cheio.')
END; 
END;