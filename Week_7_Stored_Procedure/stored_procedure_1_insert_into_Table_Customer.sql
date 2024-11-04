-- stored procedure (sakl� yordam), yazd���n�z sql komutlar�n�
-- veri taban�nda saklar. Her ihtiya� duydu�unuzda sadece ilgili
-- parametrelerle �al��t�r�rs�n�z.
-- Her defas�nda s�f�rdan kod-komut yazman�za gerek kalmaz.

-- Bir tabloya veri eklerken, bu i�lemi stored procedure ile yapmak
-- istiyorsak insert into komutundan �nce baz� parametreleri tan�mlamam�z
-- gerekir.

-- hangi i�lem i�in olursa olsun. Bir stored procedure tan�mlamak i�in
-- a�a��daki s�z dizimi aynen takip edilir ve uygulan�r.

-- bir procedure isimlendirilerken ba��na sp k�saltmas� eklenerek
-- bunun bir stored procedure oldu�u en ba��ndan belirlenir.

--CREATE PROCEDURE Procedurenin_Ad�
--AS
--BEGIN
---- i�lem yapaca��n�z sql komutu
---- buraya yazaca��m�z sql komutu daha �nce yazd���m�z komutun ayn�s�
--END


-- sql'de bir stored procedure'nin i�inde parametre kullanacaksan�z e�er
-- parametre isminden �nce @ i�areti eklemelisiniz.
-- NOT: Parametrenin ad�, kar��l�k geldi�i s�tunun ad� ile birebir ayn�
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


-- Var olan bir stored procedure'yi kullan�m �rne�i

-- bir stored procedure'yi �al��t�rmak i�in isminden �nce EXEC ya da
-- EXECUTE anahtar kelimesi eklenir

EXEC sp_insert_into_Table_Customer
	@customer_name='Enes',
	@customer_surname='KAYA',
	@customer_age=30,
	@gender_id=1
