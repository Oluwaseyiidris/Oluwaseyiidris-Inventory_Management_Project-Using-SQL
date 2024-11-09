# Fetch data on suppliers, items they supply, and analyze their prices.

-- Fetch columns containing names of suppliers, items supplied, and their unit prices
SELECT SupplierName, ItemName, UnitPrice
FROM items, price, suppliers;

-- Find the total unit price of supplies by each supplier
SELECT SupplierName, SUM(UnitPrice) AS total_unitprice
FROM items, price, suppliers 
GROUP BY SupplierName;

-- Find the average unit price of supplies by each supplier
SELECT SupplierName, AVG(UnitPrice) AS total_average
FROM items, price, suppliers 
GROUP BY SupplierName;

-- Find the highest unit price of supplies by each supplier
SELECT SupplierName, MAX(UnitPrice) AS highest_sale
FROM items, price, suppliers 
GROUP BY SupplierName;

-- Find the lowest unit price of supplies by each supplier
SELECT SupplierName, MIN(UnitPrice) AS lowest_sale
FROM items, price, suppliers 
GROUP BY SupplierName;

-- Count the total number of supplies by each supplier
SELECT SupplierName, COUNT(item) AS total_number_of_supplies
FROM items, price, suppliers 
GROUP BY SupplierName;