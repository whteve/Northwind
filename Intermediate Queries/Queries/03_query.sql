/********************************
-- Question 3 

Tulis query untuk mendapatkan top 5 nama produk yang quantitynya paling
banyak diorder pada bulan Januari 1997
***********************************/


SELECT 
	TOP 5
	Products.ProductName,
	[Order Details].Quantity
FROM 
	[Order Details]
	LEFT JOIN Products ON [Order Details].ProductID = Products.ProductID
	LEFT JOIN Orders ON [Order Details].OrderID = Orders.OrderID
WHERE 
	Orders.OrderDate BETWEEN '1997-01-01' AND '1997-01-31'
ORDER BY 
	Quantity DESC