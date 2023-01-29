/********************************
-- Question 2 

Tulis query untuk mendapatkan nama employee yang termasuk Sales
Representative
***********************************/



SELECT 
	CONCAT(FirstName,' ',LastName) AS EmployeeName,
	Title 
FROM 
	Employees
WHERE 
	Title='Sales Representative'