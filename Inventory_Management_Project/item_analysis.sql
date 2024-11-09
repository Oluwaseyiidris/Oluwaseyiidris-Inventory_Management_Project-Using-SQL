#  Fetch item-specific data, such as item names and prices, with custom headers.

-- Fetch only item names from the items table
SELECT ItemName FROM items;

-- Fetch item names and change the header to "ITEM NAME"
SELECT ItemName AS "ITEM NAME" FROM items;

-- Fetch columns containing item names and their unit prices
SELECT ItemName, UnitPrice FROM items, supplies;
