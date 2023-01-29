/********************************
-- Question 6 

Tulis query untuk mendapatkan Company name pada tabel customer yang
melakukan pembelian di atas 500 pada tahun 1997
***********************************/



SELECT 
	Customers.CompanyName,
	YEAR(Orders.OrderDate) AS Tahun,
	Products.UnitPrice*[Order Details].Quantity as Pembelian
FROM
	Orders
	LEFT JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
	LEFT JOIN Products ON [Order Details].ProductID=Products.ProductID
	LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE 
	YEAR(Orders.OrderDate)='1997' AND [Order Details].UnitPrice*Quantity>500