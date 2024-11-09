

# Inventory and Supplier Management Analysis Using SQL

## Project Description
This project analyzes an inventory management system's database focused on camera data. It aims to uncover valuable insights on product details, supplier performance, and pricing strategies, demonstrating SQL skills in data querying, data manipulation, and analysis.

## Objectives

To explore tables containing items, suppliers, and supply transactions.
To analyze the cost of items and identify suppliers pricing patterns.
To calculate total, average, highest, and lowest prices of supplies.
To identify the most and least expensive products provided by each supplier.
To manipulate data by updating item prices and renaming table columns.

## Project Structure

This project is organized into several SQL files, each containing queries focused on a different aspect of the analysis:

 **database_setup.sql**: Sets up the database, selects the schema, and displays available tables.
 **table_views.sql**: Displays details of each table, including `items`, `suppliers`, and `supplies`.
 **item_analysis.sql**: Fetches item-specific data such as item names and unit prices.
 **supplier_pricing.sql**: Fetches supplier data and performs price-related calculations (e.g., total, average, highest, lowest prices).
 **price_update.sql**: Updates unit prices by a set percentage and renames tables for clarity.
 **product_extremes.sql**: Identifies the most and least expensive products provided by each supplier.

## Dataset Information

This project uses a camera dataset with three main tables located in the database:

 **items**: Contains information about each camera product, including `ItemID`, `ItemName`, and `UnitPrice`.
 **suppliers**: Contains details about suppliers, including `SupplierID` and `SupplierName`.
 **supplies (renamed to price)**: Records supply transactions, linking items and suppliers along with unit prices.


## Insights

The metrics extracted in this analysis provide critical insights that help drive business decisions. Here is a breakdown of how each analysis helps:

 **Supplier Pricing Analysis**:
 **Total, Average, Highest, and Lowest Prices**: Summarizing pricing data helps the business evaluate each supplier's cost-effectiveness. For instance, finding suppliers with lower average prices can indicate better cost-saving options, while identifying those with higher prices may highlight premium suppliers or areas for negotiation.
    **Count of Supplies by Supplier**: The total number of supplies from each supplier reveals which suppliers the business relies on most heavily. Suppliers with high supply counts could be strategic partners, while low-count suppliers may require a review for efficiency.

 **Product Pricing Patterns**:
    **Most and Least Expensive Products**: Identifying the most and least expensive products per supplier helps focus cost-control strategies. Expensive items might be essential but costly, potentially warranting price negotiations or alternative sourcing. Low-cost items offer opportunities to bundle or emphasize in promotions.
 [Item Analysis Result](item_analysis.md)
  [Supplier Pricing Result](supplier_pricing.md)


 **Inventory Cost Updates**:
    **Price Increase Simulation**: A 5% price increase simulation reflects real-world scenarios, such as inflation. This helps assess the impact on inventory costs, providing a forecast of expenses that can guide budgeting and pricing strategies.

## Conclusion
By conducting this analysis, we gain a clearer view of the overall cost structure and supplier efficiency, helping the business make data-informed decisions. These insights can guide cost-saving measures, negotiation tactics, and inventory planning strategies, ultimately supporting profitability and operational efficiency.