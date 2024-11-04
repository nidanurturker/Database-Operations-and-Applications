
-- delete iþlemi için stored procedure tanýmlama

CREATE PROCEDURE sp_delete_Table_Customer

	@customer_id INT

AS
BEGIN
	DELETE FROM Table_Customer WHERE customer_id=@customer_id
END

-- delete sorgusunu çalýþtýran kod
-- 4 numaralý kullanýcýyý siler
EXEC sp_delete_Table_Customer @customer_id = 4

