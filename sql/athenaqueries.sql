CREATE DATABASE sales_db;
CREATE EXTERNAL TABLE sales_data (
  order_id INT,
  order_date DATE,
  customer_name STRING,
  region STRING,
  product STRING,
  category STRING,
  amount INT,
  year INT,
  month INT,
  order_value_category STRING,
  day_of_week STRING,
  discount DOUBLE,
  final_amount DOUBLE,
  customer_type STRING
)
STORED AS PARQUET
LOCATION 's3://first-bucket-project-2004/processed/enhanced/';
SELECT * FROM sales_data LIMIT 10;

--total revenue
SELECT SUM(final_amount) AS total_revenue FROM sales_data;

--total sales by category
SELECT category, SUM(final_amount) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;

--total sales by month
SELECT year, month, SUM(final_amount) AS total_sales
FROM sales_data
GROUP BY year, month
ORDER BY year, month;
