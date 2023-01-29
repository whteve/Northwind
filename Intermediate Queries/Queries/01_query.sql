/********************************
-- Question 1 

Tulis query untuk mendapatkan jumlah customer tiap bulan yang melakukan
order pada tahun 1997
***********************************/



SELECT 
	COUNT(Customers.CustomerID) AS Jumlah_Customer,
	MONTH(Orders.OrderDate) AS Bulan
FROM 
	Orders
	LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID
WHERE 
	YEAR(Orders.OrderDate)='1997'
GROUP BY 
	MONTH(Orders.OrderDate)