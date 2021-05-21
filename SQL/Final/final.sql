USE AdventureWorks2012;
GO

-- 10.

--DECLARE @StartingHireDate datetime

--SELECT @StartingHireDate = '12/31/2001'
--SELECT e.BusinessEntityID, p.FirstName,
--	p.LastName, e.Hiredate

--FROM HumanResources.Employee AS e
--INNER JOIN Person.Person AS p
--	ON e.BusinessEntityID = p.BusinessEntityID

--WHERE e.HireDate <= @StartingHireDate;

--9.
SELECT DISTINCT sm.Name, SUM(ph.TotalDue) AS [Total Due],
		AVG(ph.TotalDue) AS [Average Total Due], 
		SUM(ph.EmployeeID) AS [Number Of Employee],
		COUNT (DISTINCT ph.EmployeeID)
FROM Purchasing.PurchaseOrderHeader AS ph
	INNER JOIN Purchasing.ShipMethod AS sm
	  ON ph.ShipMethodID = sm.ShipMethodID
GROUP BY sm.Name, ph.TotalDue;

--8. 
--CREATE PROCEDURE Sp_UniqueEmp AS

--SELECT DISTINCT JobTitle
--FROM HumanResources.Employee

--7.
--SELECT Name, ProductNumber, ListPrice
--FROM Production.Product
--WHERE DaysToManufacture < 4 AND ProductLine = 'R'
--ORDER BY Name;

-- 6.
--SELECT DISTINCT p.ProductID, p.Name, p.ProductNumber, p.FinishedGoodsFlag, p.ListPrice
--FROM Production.Product AS p
--LEFT OUTER JOIN(SELECT BillOfMaterialsID
--			FROM Production.BillOfMaterials) AS bm 
--ON p.ProductID = bm.BillOfMaterialsID
--WHERE p.ProductSubcategoryID IS NULL;

--SELECT DISTINCT Name, ProductSubCategoryID
--FROM Production.Product

--5.
--UPDATE Production.Product
--SET ListPrice = (ListPrice * 1.10)
--WHERE ProductSubcategoryID = 23;

--4.
--SELECT p.Name AS [Product Name], 
--	[Non Disount Sales] = (sd.UnitPrice * sd.OrderQty),
--	[Discount Sales] = (sd.UnitPrice * sd.OrderQty) * sd.UnitPriceDiscount
--FROM Production.Product AS p
--	LEFT OUTER JOIN Sales.SalesOrderDetail AS sd
--	  ON p.ProductID = sd.ProductID
--ORDER BY p.Name DESC;

--3. 
--SELECT ProductID, SpecialOfferID, 
--	AVG(UnitPrice) AS [Average Price],
--	SUM(LineTotal)	
--FROM Sales.SalesOrderDetail
--GROUP BY ProductID, SpecialOfferID
--ORDER BY ProductID;

--2. 
--SELECT p.FirstName, p.LastName, sh.Status, sh.OrderDate,
--		AVG(sd.OrderQty) AS AverageQtyOrdered,
--		sd.OrderQty AS ItemsCount, COUNT(sd.ProductID)

--FROM Sales.SalesOrderDetail AS sd
--	INNER JOIN Sales.SalesOrderHeader AS sh
--		ON sd.SalesOrderDetailID = sh.SalesOrderID
--	INNER JOIN Sales.Customer AS c
--		ON sh.CustomerID = c.CustomerID
--	INNER JOIN Person.Person AS p
--		ON c.PersonID = p.BusinessEntityID

--GROUP BY p.FirstName, p.LastName, sh.Status;
-- 1.
--SELECT SalesOrderNumber, TotalDue, 
--	CAST(TotalDue AS varchar) AS TotalDueCast,
--	OrderDate, CAST(OrderDate AS date) AS OrderDateCast
--FROM Sales.SalesOrderHeader;