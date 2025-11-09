CREATE OR REPLACE VIEW workspace.default.v_spending_over_time AS
SELECT
  Transaction_Year,
  Transaction_Month,
  SUM(Purchase_Amount) AS Total_Spending,
  COUNT(Transaction_ID) AS Number_of_Transactions
FROM
  workspace.default.transactions_cleaned
GROUP BY
  Transaction_Year,
  Transaction_Month
ORDER BY
  Transaction_Year,
  Transaction_Month;