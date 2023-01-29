WITH cte AS (
SELECT 
	CONCAT(Employees.FirstName, ' ', Employees.LastName) AS Employee_FullName,
	Employees.Title, 
	COUNT(Orders.OrderID) AS Jumlah_OrderID
FROM
	Orders
	LEFT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY 
	CONCAT(Employees.FirstName, ' ', Employees.LastName), 
	Employees.Title
)

SELECT * FROM cte
ORDER BY 
	Jumlah_OrderID DESC