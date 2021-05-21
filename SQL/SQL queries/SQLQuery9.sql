--SELECT prod_id, prod_name
--FROM Products
--WHERE prod_name LIKE 'F%y'

--SELECT prod_id, prod_name
--FROM Products
--WHERE prod_name LIKE '_ inch teddy bear';

--SELECT prod_id, prod_name
--FROM Products
--Where prod_name LIKE '%Bean bag%';

--SELECT prod_id, prod_name
--FROM Products
--WHERE prod_name COLLATE         ==== makes it case sensitive
--LATIN1_General_CS_AS LIKE '%Bean bag%';

--SELECT prod_id, prod_name
--FROM Products						==== how to do range
--WHERE prod_name LIKE '%[A-D]ean bag%';

--SELECT prod_id, prod_name
--FROM Products
--WHERE prod_name COLLATE		======makes the range case sensitive
--LATIN1_General_CS_AS LIKE '%[A-D]Ean bag%'; 

--SELECT prod_id, prod_name
--FROM Products
--WHERE prod_name LIKE '%[^b]ean bag%';

--SELECt AVG(prod_price) AS avg_price  === give me average of prod_price and call it avg_price
--FROM Products;
--GO								   === not neccessary here but should be used after every block of statement

--SELECT AVG(prod_price) AS avg_price
--FROM Products
--WHERE vend_id = 'DLL01';

--SELECT COUNT(*) AS num_cust
--FROM Customers;

--SELECT COUNT(cust_email) AS num_cust
--FROM Customers;

--SELECT MAX(prod_price) AS max_price
--FROM Products;

--SELECT MIN(prod_price) AS in_price
--FROM Products;

--SELECT SUM(quantity) AS items_ordered
--FROM OrderItems
--WHERE order_num = 20005;

--SELECT SUM(item_price*quantity) AS total_price
--FROM OrderItems
--WHERE order_num = 20005;

--SELECT COUNT(*) AS num_items, MIN(prod_price) AS price_min, MAX(prod_price) AS price_max, AVG(prod_price) AS price_avg
--FROM Products;

--SELECT AVG(DISTINCT prod_price) AS avg_price
--FROM Products
--WHERE vend_id = 'DLL01';

--SELECT order_num, MIN(quantity) AS min_qunatity
--FROM OrderItems;

SELECT DISTINCT order_num, item_price
FROM OrderItems;

SELECT MAX(item_price) AS max_price
FROM OrderItems
WHERE prod_id = 'BR03';

SELECT *
FROM OrderItems;

SELECT AVG(DISTINCT order_num), prod_id, quantity, item_price
FROM OrderItems;
