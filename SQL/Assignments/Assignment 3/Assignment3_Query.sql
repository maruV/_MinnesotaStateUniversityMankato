Assignment 3

SELECT *
FROM Sales.SalesOrderDetail;

#1

SELECT ProductID, AVG(OrderQty) AS [AverageQuantity],
	Total = SUM(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(OrderQty) < 3
	AND SUM(LineTotal) > 1000000;

#2

SELECT ProductID, SUM(LineTotal) AS Total
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) > 2000000;

#3

SELECT ProductID, SUM(LineTotal) AS Total
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING COUNT(ProductID) > 1500;

#4

SELECT PhoneNumber
FROM Person.PersonPhone
WHERE PhoneNumber LIKE '415%';

#5

SELECT PhoneNumber
FROM Person.PersonPhone
WHERE PhoneNumber NOT LIKE '415%';

#6

SELECT ProductID, Name
FROM Production.Product
WHERE ListPrice > 14 
	AND ListPrice < 26;

#7

SELECT BusinessEntityID, Name
FROM Sales.Store
WHERE BusinessEntityID LIKE '1%'
	AND Name LIKE 'Bicycle%';

#8

SELECT ProductID
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(OrderQty) > 5;

#9

SELECT e.BusinessEntityID
FROM Sales.SalesPerson AS sp
    INNER JOIN HumanResources.Employee AS e
    ON e.BusinessEntityID = sp.BusinessEntityID;

#10

SELECT E.JobTitle, E.Gender, E.VacationHours
FROM HumanResources.Employee AS E
	LEFT OUTER JOIN Person.Person AS P
	ON E.BusinessEntityID = P.BusinessEntityID
WHERE P.LastName LIKE 'A%';
