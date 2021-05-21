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

SELECT p.Name AS ProductName,
	DiscountSales = (s.OrderQty * s.UnitPrice),
	Discounts =((s.OrderQty * s.UnitPrice) * s.UnitPriceDiscount)
FROM Production.Product AS p
RIGHT OUTER JOIN Sales.SalesOrderDetail AS s
	ON s.ProductID = p.ProductID
ORDER BY ProductName DESC; 

SELECT ProductID, ProductName, OrderQty, UnitPrice
FROM Production.Product