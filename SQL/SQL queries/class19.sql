--SELECT COUNT (DISTINCT JobTitle)
--FROM HumanResources.Employee;

--SELECT MAX(TaxRate) AS HighestRate
--FROM Sales.SalesTaxRate;

--SELECT SalesOrderID, SUM(LineTotal) AS SubTotal
--FROM Sales.SalesOrderDetail
--GROUP BY SalesOrderID
--HAVING SUM(LineTotal) > 100000
--ORDER BY SalesOrderID;

--SELECT ProductID, Name, Color
--FROM Production.Product
--WHERE ProductID BETWEEN 725 AND 734;

--SELECT p.BusinessEntityID, p.FirstName, p.LastName, pp.PhoneNumber AS Phone
--FROM Person.Person AS p
--INNER JOIN Person.PersonPhone AS pp
-- ON p.BusinessEntityID = pp.BusinessEntityID
--WHERE LastName LIKE 'G%'
--ORDER BY LastName, FirstName;

--SELECT p.Name AS ProductName, 
--	NonDiscountSales = (OrderQty * UnitPrice),
--	Disounts = ((OrderQty * sd.UnitPrice) * UnitPriceDiscount)
--FROM Production.Product AS p
--INNER JOIN Sales.SalesOrderDetail AS sd
-- ON p.ProductID = sd.ProductID
--ORDER BY ProductName DESC ;

--SELECT ProductID, SpecialOfferID, AVG(UnitPrice) AS [Average Price], SUM(LineTotal) AS SubTotal
--FROM Sales.SalesOrderDetail
--GROUP BY ProductID, SpecialOfferID
--ORDER BY ProductID;

