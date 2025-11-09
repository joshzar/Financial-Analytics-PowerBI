CREATE OR REPLACE VIEW workspace.default.v_top_10_customers AS
SELECT
  User_Name,
  SUM(Purchase_Amount) AS Total_Spending
FROM
  workspace.default.transactions_cleaned
GROUP BY
  User_Name
ORDER BY
  Total_Spending DESC
LIMIT 10;