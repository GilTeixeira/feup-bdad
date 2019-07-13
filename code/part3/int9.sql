.mode columns
.headers on
.nullvalue NULL 

SELECT VID AS Voo FROM Voo
EXCEPT
SELECT VooID FROM Estado
