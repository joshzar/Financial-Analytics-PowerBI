CREATE OR REPLACE TABLE workspace.default.transactions_cleaned AS
SELECT
  Transaction_ID,
  User_Name,
  Age,
  Country,
  Product_Category,
  Purchase_Amount,  -- This is already a number
  Payment_Method,
  Transaction_Date,   -- This is already a date
  YEAR(Transaction_Date) AS Transaction_Year,
  MONTH(Transaction_Date) AS Transaction_Month,
  DAYOFWEEK(Transaction_Date) AS Transaction_DayOfWeek
FROM
  workspace.default.transactions_raw
WHERE Transaction_Date IS NOT NULL;