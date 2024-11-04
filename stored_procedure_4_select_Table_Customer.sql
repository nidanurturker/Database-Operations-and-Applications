
-- Ayrýntýlý Select iþlemi için stored procedure kodu

-- Stored procedure yazarken, dýþarýdan parametre almayan
-- tek iþlem SELECT iþlemidir. Çünkü bu iþlem sadece mevcut deðerleri
-- görmemizi saðlar

CREATE PROCEDURE sp_select_Table_Customer
AS
BEGIN
	SELECT 
		tbc.customer_id as 'MÜÞTERÝ ID',
		tbc.customer_name as 'MÜÞTERÝ ADI',
		tbc.customer_surname as 'MÜÞTERÝ SOYADI',
		tbg.gender_name as 'CÝNSÝYET'
	FROM Table_Customer tbc
	INNER JOIN Table_Gender tbg
	ON tbc.gender_id = tbg.gender_id
END

-- select için stored procedure oluþturulurken dýþarýdan parametre
-- almadýðý için çalýþtýrýrken de yani EXEC yaparken de bir parametre
-- verilmez. Sadece EXEC Stored_Procedure_Adý þeklinde bir çaðýrma
-- iþlemi yapýlýr

EXEC sp_select_Table_Customer

