
-- Ayr�nt�l� Select i�lemi i�in stored procedure kodu

-- Stored procedure yazarken, d��ar�dan parametre almayan
-- tek i�lem SELECT i�lemidir. ��nk� bu i�lem sadece mevcut de�erleri
-- g�rmemizi sa�lar

CREATE PROCEDURE sp_select_Table_Customer
AS
BEGIN
	SELECT 
		tbc.customer_id as 'M��TER� ID',
		tbc.customer_name as 'M��TER� ADI',
		tbc.customer_surname as 'M��TER� SOYADI',
		tbg.gender_name as 'C�NS�YET'
	FROM Table_Customer tbc
	INNER JOIN Table_Gender tbg
	ON tbc.gender_id = tbg.gender_id
END

-- select i�in stored procedure olu�turulurken d��ar�dan parametre
-- almad��� i�in �al��t�r�rken de yani EXEC yaparken de bir parametre
-- verilmez. Sadece EXEC Stored_Procedure_Ad� �eklinde bir �a��rma
-- i�lemi yap�l�r

EXEC sp_select_Table_Customer

