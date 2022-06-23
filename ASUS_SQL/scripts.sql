-- Find the employee with least sales
SELECT employeeID FROM 
(SELECT employeeID, SUM(price) 
FROM Sale JOIN Item ON Sale.SaleID=Item.SaleID 
GROUP BY employeeID) a
WHERE sum = (
SELECT MIN(a.sum) FROM (
SELECT employeeID, SUM(price) FROM Sale JOIN Item ON Sale.SaleID=Item.SaleID GROUP BY employeeID) a);

-- find top-spending customer
SELECT customerID, SUM(price*amount) 
FROM Sale JOIN Item 
ON Sale.SaleID=Item.SaleID 
GROUP BY customerID;


-- JOIN Employee table with Sales table
SELECT * FROM Employee LEFT JOIN sale ON Employee.employeeID=Sale.employeeID JOIN Item ON sale.saleID=Item.saleID;


-- list out the sales of each city
SELECT CityID, SUM(Amount*Price) 
FROM Employee LEFT JOIN sale 
ON Employee.employeeID=Sale.employeeID
JOIN Item ON sale.saleID=Item.saleID 
GROUP BY CityID
ORDER BY sum DESC;

-- list out the sales of a specific item in each city (here we use 'LEXUS' as an example item)
SELECT CityID, SUM(price) 
FROM (
Employee JOIN sale ON Employee.employeeID=Sale.employeeID 
JOIN Item ON sale.saleID=Item.saleID) 
WHERE ItemName='Lexus' 
GROUP BY CityID
ORDER BY sum DESC;

-- list out the item sales in a specific city (here we use 'TAIPEI' as an example city)
SELECT itemName, SUM(amount) 
FROM Employee JOIN sale
ON Employee.employeeID=Sale.employeeID 
JOIN Item ON sale.saleID=Item.saleID
WHERE CityID= 'Taipei' 
GROUP BY itemName 
ORDER BY sum DESC;

-- get average prices of products sold in a specific city (here we use 'TAIPEI' as an example city)
SELECT AVG(price) FROM (Employee JOIN sale ON Employee.employeeID=Sale.employeeID 
JOIN Item ON sale.saleID=Item.saleID) WHERE CityID='Taipei'; 

-- get average spending of each customer
SELECT customerID, AVG(price) FROM Sale JOIN Item ON Sale.SaleID=Item.SaleID GROUP BY customerID;

-- get customers that spend more money than the average sale price in a certain city
SELECT customerID, AVG(price) 
FROM Sale JOIN Item ON Sale.SaleID=Item.SaleID 
GROUP BY customerID HAVING AVG(price) > 
(SELECT AVG(price) FROM (
Employee JOIN sale ON Employee.employeeID=Sale.employeeID 
JOIN Item ON sale.saleID=Item.saleID) 
WHERE CityID='Taipei'
);
