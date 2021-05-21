--SELECT p.name, pr.ProductReviewID
--FROM Production.Product AS p
--LEFT OUTER JOIN Production.ProductReview AS pr
--ON p.ProductID = pr.ProductID;

--SELECT p.FirstName, p.LastName, ea.EmailAddress
--FROM Person.Person AS p
--INNER JOIN Person.EmailAddress AS ea
--ON p.BusinessEntityID = ea.BusinessEntityID;

SELECT p.ProductID, p.Name AS ProductName, sod.OrderQty, sod.UnitPrice
From Production.Product AS p
INNER JOIN Sales.SalesOrderDetail AS sod
ON p.ProductID = sod.ProductID;