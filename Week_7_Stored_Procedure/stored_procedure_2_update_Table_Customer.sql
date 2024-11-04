

-- update iþlemi için stored procedure oluþturma

CREATE PROCEDURE sp_update_Table_Customer
	@customer_id INT,
	@customer_name NVARCHAR(50),
	@customer_surname NVARCHAR(50),
	@customer_age TINYINT,
	@gender_id TINYINT

AS
BEGIN
	UPDATE Table_Customer SET
	customer_name = @customer_name,
	customer_surname = @customer_surname,
	customer_age = @customer_age,
	gender_id = @gender_id

	WHERE customer_id = @customer_id
END


EXEC sp_update_Table_Customer
	@customer_name='Ayþenur',
	@customer_surname = 'ÇETÝN',
	@customer_age = 28,
	@gender_id = 2,
	@customer_id = 4

