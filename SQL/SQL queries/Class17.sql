--SELECT vend_id, COUNT(*) AS num_prods
--FROM Products
--GROUP BY vend_id;
--GO

--SELECT cust_id, COUNT(*) AS orders
--FROM Orders
--GROUP BY cust_id
--HAVING COUNT(*) >= 2;

--SELECT vend_id, COUNT(*) AS num_prods
--FROM Products
--GROUP BY vend_id
--HAVING COUNT(*) >=2;

--SELECT vend_id, COUNT(*) AS num_prods
--FROM Products
--WHERE prod_price >= 4
--GROUP BY vend_id
--HAVING COUNT(*) >=2;

--SELECT order_num, COUNT(*) AS items
--FROM OrderItems
--WHERE quantity >= 3
--GROUP BY order_num
--HAVING COUNT(*) >=3; -- or COUNT(order_item) >= 3

--SELECT order_num, SUM(order_item) AS items
--FROM OrderItems
--GROUP BY order_num
--HAVING COUNT(*) >= 3;

--SELECT vend_name, prod_name, prod_price
--FROM VENDORS AS v
--LEFT OUTER JOIN PRODUCTS AS p
--ON v.vend_id = p.vend_id
--WHERE prod_price >= 3;

--SELECT c.cust_id, o.order_num
--FROM Orders AS o
--	INNER JOIN Customers AS c
--	ON o.cust_id = c.cust_id;

--SELECT c.cust_id, o.order_num
--FROM Customers AS c
--	LEFT OUTER JOIN Orders AS o
--	ON o.cust_id = c.cust_id;
	

--SELECT c.cust_id, o.order_num
--FROM Orders AS o
--	LEFT OUTER JOIN Customers AS c
--	ON o.cust_id = c.cust_id;
	
--SELECT c.cust_id, o.order_num
--FROM Orders AS o
--	FULL OUTER JOIN Customers AS c
--	ON o.cust_id = c.cust_id;


--SELECT c.cust_id, COUNT(o.order_num) AS num_ord
--FROM Customers AS c
--	INNER JOIN Orders AS o
--	ON c.cust_id = o.cust_id
--	GROUP BY c.cust_id;

SELECt c.cust_id, COUNT(o.order_num) AS num_ord, 
FROM Customers AS c
	INNER JOIN OrderItems AS o
	ON 
	INNER JOIN Products AS p
	ON