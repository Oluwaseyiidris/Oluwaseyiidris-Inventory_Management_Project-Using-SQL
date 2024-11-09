# Identify the most and least expensive products for each supplier.

-- Most expensive product by each supplier
WITH most_expensive_product AS (
    SELECT SupplierName,
           ItemName AS product, 
           UnitPrice,
           DENSE_RANK() OVER (PARTITION BY SupplierName ORDER BY UnitPrice DESC) AS ranked
    FROM suppliers
    JOIN price ON suppliers.SupplierID = price.Supplier
    JOIN items ON price.item = items.ItemID
)
SELECT SupplierName, product
FROM most_expensive_product
WHERE ranked = 1;

-- Least expensive product by each supplier
WITH least_expensive_product AS (
    SELECT SupplierName,
           ItemName AS product, 
           UnitPrice,
           DENSE_RANK() OVER (PARTITION BY SupplierName ORDER BY UnitPrice) AS ranked
    FROM suppliers
    JOIN price ON suppliers.SupplierID = price.Supplier
    JOIN items ON price.item = items.ItemID
)
SELECT SupplierName, product
FROM least_expensive_product
WHERE ranked = 1;