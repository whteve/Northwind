SELECT
	CONCAT(Employees.FirstName, ' ', Employees.LastName) AS Employee_FullName,
	DATEDIFF(YEAR,Employees.BirthDate, Employees.HireDate) AS Employee_Age,
	Employees.Title,
	Territories.TerritoryDescription
FROM
	EmployeeTerritories
	LEFT JOIN Employees ON EmployeeTerritories.EmployeeID = Employees.EmployeeID
	LEFT JOIN Territories ON EmployeeTerritories.TerritoryID = Territories.TerritoryID
ORDER BY
	Employee_FullName, TerritoryDescription