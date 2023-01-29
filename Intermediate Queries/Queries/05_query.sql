/********************************
-- Question 5 

Tulis query untuk mendapatkan jumlah OrderID yang pernah melakukan
pembelian (unit_price dikali quantity) <=100, 100<x<=250, 250<x<=500, dan
>500
***********************************/


SELECT 
	CASE 
		WHEN Products.UnitPrice*[Order Details].Quantity <=100 THEN 'Below $100'
		WHEN Products.UnitPrice*[Order Details].Quantity > 100 AND Products.UnitPrice*[Order Details].Quantity <= 250 THEN '$100 - $250'
		WHEN Products.UnitPrice*[Order Details].Quantity > 250 AND Products.UnitPrice*[Order Details].Quantity <= 500 THEN '$250 - $500'
		WHEN Products.UnitPrice*[Order Details].Quantity > 500 THEN 'Over $500'
	END AS Price_Range,
	COUNT ([Order Details].OrderID) AS Jumlah_OrderID
FROM
	[Order Details]
	LEFT JOIN Products on [Order Details].ProductID = Products.ProductID
GROUP BY
	CASE 
		WHEN Products.UnitPrice*[Order Details].Quantity <=100 THEN 'Below $100'
		WHEN Products.UnitPrice*[Order Details].Quantity > 100 AND Products.UnitPrice*[Order Details].Quantity <= 250 THEN '$100 - $250'
		WHEN Products.UnitPrice*[Order Details].Quantity > 250 AND Products.UnitPrice*[Order Details].Quantity <= 500 THEN '$250 - $500'
		WHEN Products.UnitPrice*[Order Details].Quantity > 500 THEN 'Over $500'
	END 
ORDER BY
	Price_Range