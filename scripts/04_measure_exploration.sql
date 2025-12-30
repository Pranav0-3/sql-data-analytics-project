-- Measure Exploration

/*
1. Find Total Sales
2. Find how many items are sold
3. Find the Avg selling price
4. Find the total number of Order
5. Find the total number of Products
6. Find the total numbers of Customers
7. Find the total number of Customers that have placed orders
*/

-- 1. Find Total Sales
select
sum(sales_amount) as total_sales_amount
from gold.fact_sales;

-- 2. Find how many items are sold
select
sum(quantity) as total_item_sold
from gold.fact_sales


-- 3. Find the Avg selling price
select 
avg(price) as average_price
from gold.fact_sales;

-- 4. Find the total number of Order
select
count(order_number) as total_order,
count (distinct order_number) as distinct_total_order
from gold.fact_sales;

-- 5. Find the total number of Products
select 
count(product_name) as total_number_of_products,
count(distinct product_name) as total_number_of_distinct_products
from gold.dim_products;

-- 6. Find the total numbers of Customers
select 
count(customer_key)
from gold.dim_customers;

-- 7. Find the total number of Customers that have placed orders
SELECT COUNT(DISTINCT customer_key) AS total_customers FROM gold.fact_sales;


--- 8. Generate a report that shows all key metrics of the business
select 'Total Sales' as measure_name,sum(sales_amount) as measure_value from gold.fact_sales
union all
select 'Total Items Sold' as measure_name, sum(quantity) as measure_value from gold.fact_sales
union all
select 'Avg Price' as measure_name, avg(price) as measure_value from gold.fact_sales
union all
select 'Total numbers of orders' as measure_name, count (distinct order_number) as measure_value from gold.fact_sales
union all 
select 'Total numbers of products' as measure_name, count(distinct product_name) as measure_value from gold.dim_products
union all
select 'Total numbers of customer' as measure_name, count(customer_key) as measure_value from gold.dim_customers;
--union all
--SELECT 'Total numbers of customer who placed order' as measure_name, COUNT(DISTINCT customer_key) as measure_value FROM gold.fact_sales

