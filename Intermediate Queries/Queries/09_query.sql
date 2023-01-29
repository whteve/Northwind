/********************************
-- Question 9 

Buatlah procedure Invoice untuk memanggil CustomerID,
CustomerName/company name, OrderID, OrderDate, RequiredDate,
ShippedDate jika terdapat inputan CustomerID tertentu
***********************************/



CREATE PROCEDURE INVOICE0 @CUSTOMERID NVARCHAR(40)
AS
SELECT 
	Customers.CustomerID, Customers.CompanyName,
	Orders.OrderID, Orders.OrderDate,
	Orders.RequiredDate, Orders.ShippedDate
FROM
	Orders
	LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE 
	Customers.CustomerID = @CUSTOMERID
GO

--Execute dengan input CustomerID ALFKI
EXEC INVOICE0 @CUSTOMERID = 'ALFKI'