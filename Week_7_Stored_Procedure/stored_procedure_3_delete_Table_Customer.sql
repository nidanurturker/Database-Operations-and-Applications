
-- delete i�lemi i�in stored procedure tan�mlama

CREATE PROCEDURE sp_delete_Table_Customer

	@customer_id INT

AS
BEGIN
	DELETE FROM Table_Customer WHERE customer_id=@customer_id
END

-- delete sorgusunu �al��t�ran kod
-- 4 numaral� kullan�c�y� siler
EXEC sp_delete_Table_Customer @customer_id = 4

