.mode columns
.headers on
.nullvalue NULL 

SELECT HID AS Hangar, Capacidade, count(*) AS Ocupados
FROM Hangar, Aviao
WHERE HID=HangarID
GROUP BY HID;
