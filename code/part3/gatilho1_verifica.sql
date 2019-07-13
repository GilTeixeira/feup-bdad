SELECT AID AS Aviao, HangarID AS Hangar FROM Aviao WHERE HangarID IS NOT NULL;
SELECT HID AS Hangar, Capacidade FROM Hangar WHERE capacidade IS NOT NULL;

INSERT INTO Aviao(AID, ModeloNome, HangarID, CompanhiaID, Estado) VALUES(11, 'Martin', 4, 3, 'Operacional');

SELECT AID AS Aviao, HangarID AS Hangar FROM Aviao WHERE HangarID IS NOT NULL;
SELECT HID AS Hangar, Capacidade FROM Hangar WHERE capacidade IS NOT NULL;

UPDATE Aviao SET HangarID = 1 WHERE AID = 11;