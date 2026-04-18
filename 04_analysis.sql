-- STEP 4: ANALYSIS

-- Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM sales_clean;

-- Revenue by Category
SELECT category, SUM(total_amount) AS revenue
FROM sales_clean
GROUP BY category;

-- Top Customers
SELECT customer_name, SUM(total_amount) AS total_spent
FROM sales_clean
GROUP BY customer_name
ORDER BY total_spent DESC;

-- Daily Sales
SELECT order_date, SUM(total_amount) AS daily_sales
FROM sales_clean
GROUP BY order_date;