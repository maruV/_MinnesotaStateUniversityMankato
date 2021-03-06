USE AdventureWorks2012
GO

-- 1.
--SELECT CONCAT (ProductID, ' : ', Name) AS IDName
--FROM Production.Product;

-- 2. 
--SELECT SalesOrderID, OrderDate, DATEADD(MONTH, 6, OrderDate) AS Plus6Months
--FROM Sales.SalesOrderHeader;

-- 3.
--SELECT SalesOrderID, OrderDate, 
--		DATEPART (YEAR, OrderDate) AS OrderYear,
--		DATEPART (MONTH, OrderDate) AS OrderMonth 
--FROM Sales.SalesOrderHeader;

-- 4.
--SELECT SalesOrderID, OrderDate
--FROM Sales.SalesOrderHeader
--ORDER BY DATEPART (MONTH, OrderDate), DATEPART (YEAR, OrderDate);

-- 5.
--SELECT SalesOrderID, p.ProductID, p.Name
--FROM Sales.SalesOrderDetail AS sd
--RIGHT OUTER JOIN Production.Product AS p
--  ON sd.ProductID = p.ProductID;

-- 6.
--SELECT sh.CurrencyRateID, c.AverageRate, sm.ShipBase, sh.SalesOrderID
--FROM Sales.SalesOrderHeader AS sh
--LEFT OUTER JOIN Sales.CurrencyRate AS c
--  ON sh.CurrencyRateID = c.CurrencyRateID
--LEFT OUTER JOIN Purchasing.ShipMethod AS sm
--  ON sh.ShipMethodID = sm.ShipMethodID;

-- 7.
--SELECT p.FirstName, p.MiddleName, p.LastName, pr.Name
--FROM Person.Person AS p
--  INNER JOIN Sales.Customer AS c
--    ON p.BusinessEntityID = c.PersonID
--  INNER JOIN Sales.SalesOrderHeader AS sh
--    ON c.CustomerID = sh.CustomerID
--  INNER JOIN Sales.SalesOrderDetail AS sd
--    ON sh.SalesOrderID = sd.SalesOrderID
--  INNER JOIN Production.Product AS pr
--    ON sd.ProductID = pr.ProductID;


-- 8.
--SELECT ProductModelID, COUNT (ProductModelID) AS CountOfProducts
--FROM Production.Product
--GROUP BY ProductModelID
--HAVING COUNT (ProductModelID) = 1;

-- 9.
--SELECT COUNT (DISTINCT TerritoryID) AS CountOfTerritoryID, CustomerID
--FROM Sales.SalesOrderHeader
--GROUP BY CustomerID;

-- 10.
--SELECT COUNT(sh.OrderDate) AS CountOfOrders, p.FirstName, p.MiddleName, p.LastName
--FROM Sales.SalesOrderHeader AS sh
--INNER JOIN Sales.Customer AS c
--  ON sh.CustomerID = c.CustomerID
--INNER JOIN Person.Person AS p
--  ON c.PersonID = p.BusinessEntityID
--GROUP BY p.FirstName, p.MiddleName, p.LastName
--ORDER BY p.FirstName;
