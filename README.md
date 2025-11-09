# Financial Transactions Analytics

## Summary

This project demonstrates an end-to-end data analytics pipeline, analyzing a dataset of simulated financial transactions to uncover key business insights. The primary goal was to identify spending patterns, top customers, and performance over time. The entire data engineering and aggregation process was conducted within a cloud-based Databricks environment using SQL, with the final results visualized in a summary dashboard in Power BI.

## Technology Stack

*   **Databricks:** Used for the core ETL process, data transformation, and aggregation via Databricks SQL.
*   **Power BI:** Used for creating the final data visualizations and connecting to the Databricks backend.
*   **SQL:** The language used for all data manipulation, feature engineering, and querying within Databricks.

## ETL and Data Modeling Process

The data processing was performed entirely within Databricks, following a structured, multi-stage approach to transform raw data into clean, aggregated insights ready for visualization.

### 1. Data Ingestion
The process began by ingesting the raw transaction data (a CSV file) into the Databricks environment. Databricks's file upload and table creation tools were used to create an initial raw table, `transactions_raw`, in the workspace.

### 2. Data Transformation and Cleaning
The raw data was then transformed into a reliable, analysis-ready dataset. A SQL query was executed using `CREATE TABLE AS SELECT` to generate a new table, `transactions_cleaned`. This critical step involved:

*   **Schema Verification:** Confirming that Databricks correctly inferred the data types (e.g., `double` for `Purchase_Amount` and `date` for `Transaction_Date`).
*   **Feature Engineering:** Creating new, valuable columns for time-series analysis by extracting the year, month, and day of the week from the transaction date. This resulted in new columns such as `Transaction_Year` and `Transaction_Month`.
*   **Data Quality:** Filtering out any rows with null values to ensure the integrity of the final dataset.

### 3. Aggregation and View Creation
To optimize dashboard performance and provide clean, pre-calculated data to Power BI, the final analysis was performed in Databricks. Three specific SQL **Views** were created to serve as direct data sources for the dashboard visuals:

*   **`v_spending_by_category`**: Calculated the total spending for each product category.
*   **`v_top_10_customers`**: Identified the top 10 customers by their total purchase amount, sorted in descending order.
*   **`v_spending_over_time`**: Aggregated the total spending and the count of transactions for each month and year to reveal trends.

This architecture ensures that Power BI only has to handle the visualization, as all the heavy data processing is efficiently managed by Databricks.
