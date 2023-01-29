SELECT
	Products.ProductName,
	Categories.CategoryName,
	Suppliers.CompanyName AS SupplierName,
	Products.UnitsInStock,
	Products.UnitsOnOrder,
	Products.ReorderLevel,
	CASE
		WHEN Products.Discontinued = '1' THEN 'Discontinued'
		WHEN Products.Discontinued = '0' THEN 'Continued'
	END AS Product_Status
FROM 
	Products
	LEFT JOIN Categories ON Products.CategoryID = Categories.CategoryID
	LEFT JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
ORDER BY 
	Product_Status,
	Products.ReorderLevel DESC