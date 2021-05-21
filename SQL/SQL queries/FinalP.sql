USE AdventureWorks2012;
GO

--SELECT sh.SalesOrderID, sh.OrderDate, sd.ProductID
--FROM Sales.SalesOrderHeader AS sh
--	INNER JOIN (SELECT SalesOrderID, ProductID
--				FROM Sales.SalesOrderDetail) AS sd
--	ON sh.SalesOrderID = sd.SalesOrderID;


--CREATE PROC V AS 

--SELECT DISTINCT sm.Name, YEAR(OrderDate) AS OrderYear,
--		SUM(poh.TotalDue) AS [Total Due],
--		AVG(poh.TotalDue) AS [Average Total Due], 
--		COUNT(poh.EmployeeID) AS [Number of Employees], 
--		COUNT(DISTINCT poh.EmployeeID) AS [Distinct Number of Employees] 
--FROM Purchasing.PurchaseOrderHeader AS poh
-- INNER JOIN Purchasing.ShipMethod AS sm
--  ON poh.ShipMethodID = sm.ShipMethodID
--GROUP BY sm.Name, YEAR(poh.OrderDate)
--HAVING SUM(poh.TotalDue) > 5000000;

--SELECT Name
--FROM Production.Product
--WHERE Color = 'Black'

--UNION

--SELECT Name
--FROM Production.Product
--WHERE Color = 'Silver';

SELECT SUM(sd.OrderQty) AS [Sum of Order Qty], p.Name, sh.OrderDate
FROM Sales.SalesOrderHeader AS sh
	INNER JOIN Sales.SalesOrderDetail AS sd
		ON sh.SalesOrderID = sd.SalesOrderDetailID
	INNER JOIN Production.Product AS p
		ON sd.ProductID = p.ProductID
GROUP BY p.Name, sh.OrderDate;

--SELECT ROUND(17.086, 2) AS something

--SELECT SalesOrderID, ROUND(SubTotal, 0) AS [Sub Total]
--FROM Sales.SalesOrderHeader;

--SELECT SalesOrderID, OrderDate, TotalDue
--FROM Sales.SalesOrderHeader
--WHERE (TotalDue BETWEEN 10000 AND 43000);

------SELECT sh.SalesOrderID, sh.OrderDate,
------	(SELECT sd.ProductID
------	FROM Sales.SalesOrderDetail AS sd
------	WHERE sh.SalesOrderID = sd.SalesOrderID)
------FROM Sales.SalesOrderHeader AS sh;



--SELECT DISTINCT ROUND(SUM(SubTotal), -2)
--FROM Sales.SalesOrderHeader

--SELECT SalesOrderID, ROUND(SubTotal, 2) AS [Sub Total]
--FROM Sales.SalesOrderHeader;

--SELECT CONVERT(VARCHAR, OrderDate, 111) AS OrderDate, ShipDate
--FROM Sales.SalesOrderHeader

--SELECT OrderDate, 
--		DATEPART(YEAR, OrderDate) AS OrderYear,
--		DATEPART(MONTH, OrderDate) AS OrderMonth,
--		DATEPART(DAY, OrderDate) AS OrderDay
--FROM Sales.SalesOrderHeader
--WHERE SalesOrderID IN (43659, 43714, 60621);

--SELECT DISTINCT OrderDate, GETDATE() AS [Current Date Time], 
--		DATEDIFF(year, OrderDate, GETDATE()) AS YearDiff,
--		DATEDIFF(month, OrderDate, GETDATE()) AS MonthDiff,
--		DATEDIFF(day, OrderDate, GETDATE()) AS DateDiff
--FROM Sales.SalesOrderHeader;

--CREATE PROC SimpleProc3 AS 
--SELECT *
--FROM HumanResources.Department

--SELECT p.Name
--FROM Production.Product AS p
--WHERE EXISTS (SELECT ps.Name
--			  FROM Production.ProductSubcategory AS ps
--			  WHERE p.ProductSubcategoryID = ps.ProductSubcategoryID
--					 AND ps.Name LIKE 'Wheels');

--SELECT soh.SalesOrderID, soh.OrderDate,
--	(SELECT MAX(sod.UnitPrice)
--	 FROM Sales.SalesOrderDetail AS sod
--	 WHERE soh.SalesOrderID = sod.SalesOrderID) AS MaxUnitPrice
--FROM Sales.SalesOrderHeader AS soh;

--INSERT INTO 
--HumanResources.Department(Name, GroupName, ModifiedDate)
--VALUES ('Payroll', 'Executive General and Administration', '06/12/2012')

--SELECT p.Name AS [Product Name], 
--	[Non Discount Sales] = (s.OrderQty * s.UnitPrice),
--	Discount = (s.OrderQty * s.UnitPrice) * s.UnitPriceDiscount
--FROM Production.Product AS p
--RIGHT OUTER JOIN Sales.SalesOrderDetail AS s
--  ON p.ProductID = s.ProductID
--ORDER BY p.Name DESC;

--SELECT AddressLine1 + '(' + City + '' + PostalCode + ')' AS Addresses
--FROM Person.Address;

--SELECT pr.FirstName, pr.LastName, ph.PhoneNumber
--FROM Person.Person AS pr
--INNER JOIN Person.PersonPhone AS ph
--	ON pr.BusinessEntityID = ph.BusinessEntityID
--WHERE ph.PhoneNumber LIKE '415%'
--ORDER BY pr.LastName;