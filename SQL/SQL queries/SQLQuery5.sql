/*  
SELECT *
FROM Customers
*/

/*
SELECT DISTINCT cust_name
FROM Customers
*/

/*
SELECT *
FROM Orders
WHERE order_date > '2012-02-01';
*/

/*
SELECT *
FROM Orders
WHERE order_num < 20009 OR order_date < 2012-05-01;
*/

/*
SELECT *
FROM Orders
*/

SELECT *
FROM Orders
WHERE(order_num > 20007 AND order_date > '2012-01-01') OR cust_id > 1000000000
ORDER BY cust_id, order_num, order_date;

