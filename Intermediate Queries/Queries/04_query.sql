/********************************
-- Question 4 

Tulis query untuk mendapatkan nama company yang melakukan order Chai
pada bulan Juni 1997
***********************************/


SELECT 
	Orders.OrderID,
	Products.ProductName,
	Customers.CompanyName
FROM 
	Orders
	LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID
	LEFT JOIN [Order Details] on [Order Details].OrderID = Orders.OrderID
	LEFT JOIN Products on [Order Details].ProductID = Products.ProductID
WHERE
	YEAR(Orders.OrderDate)='1997' AND MONTH(Orders.OrderDate)='06' AND Products.ProductName='Chai'