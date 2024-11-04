-- stored procedure (saklý yordam), yazdýðýnýz sql komutlarýný
-- veri tabanýnda saklar. Her ihtiyaç duyduðunuzda sadece ilgili
-- parametrelerle çalýþtýrýrsýnýz.
-- Her defasýnda sýfýrdan kod-komut yazmanýza gerek kalmaz.

-- Bir tabloya veri eklerken, bu iþlemi stored procedure ile yapmak
-- istiyorsak insert into komutundan önce bazý parametreleri tanýmlamamýz
-- gerekir.

-- hangi iþlem için olursa olsun. Bir stored procedure tanýmlamak için
-- aþaðýdaki söz dizimi aynen takip edilir ve uygulanýr.

-- bir procedure isimlendirilerken baþýna sp kýsaltmasý eklenerek
-- bunun bir stored procedure olduðu en baþýndan belirlenir.

--CREATE PROCEDURE Procedurenin_Adý
--AS
--BEGIN
---- iþlem yapacaðýnýz sql komutu
---- buraya yazacaðýmýz sql komutu daha önce yazdýðýmýz komutun aynýsý
--END


-- sql'de bir stored procedure'nin içinde parametre kullanacaksanýz eðer
-- parametre isminden önce @ iþareti eklemelisiniz.
-- NOT: Parametrenin adý, karþýlýk geldiði sütunun adý ile birebir ayný
-- OLMALIDIR!!!

-- Table_Customer isimli tabloya veri eklemeye yarayan
-- stored procedure kodu

CREATE PROCEDURE sp_insert_into_Table_Customer
	@customer_name NVARCHAR(50),
	@customer_surname NVARCHAR(50),
	@customer_age TINYINT,
	@gender_id TINYINT

AS
BEGIN
	INSERT INTO Table_Customer(
	customer_name, customer_surname,customer_age,gender_id)

	VALUES(
	@customer_name, @customer_surname, @customer_age, @gender_id)
END


-- Var olan bir stored procedure'yi kullaným örneði

-- bir stored procedure'yi çalýþtýrmak için isminden önce EXEC ya da
-- EXECUTE anahtar kelimesi eklenir

EXEC sp_insert_into_Table_Customer
	@customer_name='Enes',
	@customer_surname='KAYA',
	@customer_age=30,
	@gender_id=1
