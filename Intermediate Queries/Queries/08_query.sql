/********************************
-- Question 8 

Buatlah view untuk melihat Order Details yang berisi OrderID, ProductID,
ProductName, UnitPrice, Quantity, Discount, Harga setelah diskon
***********************************/



CREATE VIEW [NewOrderDetails] AS
SELECT
	[Order Details].OrderID, 
	[Order Details].ProductID,
	Products.ProductName, 
	Products.UnitPrice,
	[Order Details].Quantity, 
	[Order Details].Discount, 
	[Order Details].UnitPrice AS UnitPriceAfterDisc
FROM
	[Order Details]
	LEFT JOIN Products ON [Order Details].ProductID = Products.ProductID*/

--Check View
--SELECT * FROM [NewOrderDetails]