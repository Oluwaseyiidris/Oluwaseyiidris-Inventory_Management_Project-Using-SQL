# Update unit prices and modify table names for clarity.

-- Increase unit prices by 5%
UPDATE supplies
SET UnitPrice = UnitPrice + (UnitPrice * 0.05);

-- Select updated unit prices
SELECT UnitPrice FROM supplies;

-- Rename the 'supplies' table to 'price' for clarity
ALTER TABLE supplies
RENAME price;

-- Verify renamed table by selecting data from each table
SELECT * FROM items;
SELECT * FROM suppliers;
SELECT * FROM price;