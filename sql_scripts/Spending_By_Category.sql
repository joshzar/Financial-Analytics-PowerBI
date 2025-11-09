CREATE OR REPLACE VIEW workspace.default.v_spending_by_category AS
SELECT
  Product_Category,
  SUM(Purchase_Amount) AS Total_Spending
FROM
  workspace.default.transactions_cleaned
GROUP BY
  Product_Category
ORDER BY
  Total_Spending DESC;