USE AdventureWorks2012
GO

--SELECT *
--FROM Sales.SalesOrderDetail

--SELECT ProductID, SpecialOfferID, AVG(UnitPrice) AS [AveragePrice], SUM(LineTotal) AS [SubTotal]
--FROM Sales.SalesOrderDetail
--GROUP BY ProductID, SpecialOfferID
--ORDER BY ProductID;

--SELECT ProductModelID, AVG(ListPrice) AS [Average List Price]
--FROM Production.Product
--WHERE ListPrice > 1000
--GROUP BY ProductModelID
--ORDER BY ProductModelID;

--SELECT ProductID
--FROM Sales.SalesOrderDetail
--GROUP BY ProductID
--HAVING AVG(OrderQty) > 5

--SELECT p.Name AS ProductName,
--	DiscountSales = (s.OrderQty * s.UnitPrice),
--	Discounts =((s.OrderQty * s.UnitPrice) * s.UnitPriceDiscount)
--FROM Production.Product AS p
--RIGHT OUTER JOIN Sales.SalesOrderDetail AS s
--	ON s.ProductID = p.ProductID
--ORDER BY ProductName DESC; 

--SELECT p.ProductID, p.Name AS ProductName, sd.OrderQty, UnitPrice
--FROM Production.Product AS p
--	INNER JOIN Sales.SalesOrderDetail AS sd
--	ON p.ProductID = sd.ProductID;

--SELECT *
--FROM HumanResources.Department
--WHERE Name LIKE 'Pr%';

--SELECT SalesOrderNumber, TotalDue,
--	CAST (TotalDue AS decimal(10, 2)) AS TotalDueCast
--FROM Sales.SalesOrderHeader

--UPDATE Production.Product
--SET ListPrice = p.ListPrice * 1.10
--FROM Production.Product AS p
--INNER JOIN Production.ProductSubcategory AS ps
--ON p.ProductSubcategoryID = ps.ProductSubcategoryID
--WHERE ps.Name = 'socks';

--SELECT Name, ProductNumber, ListPrice AS Price
--FROM Production.Product
--WHERE ProductLine LIKE 'R%'
--	AND DaysToManufacture < 4
--ORDER BY Name ASC;

--SELECT DISTINCT JobTitle
--FROM HumanResources.Employee

--SELECT ProductID, AVG(UnitPrice) AS "Average Price"
--FROM Sales.SalesOrderDetail
--WHERE OrderQty > 10
--GROUP BY ProductID
--ORDER BY AVG(UnitPrice);