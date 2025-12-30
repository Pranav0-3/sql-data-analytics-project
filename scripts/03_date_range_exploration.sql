-- Date Exploration

-- Find the date of the first and last order
-- how many years of sales are available
select 
min(order_date) first_order_date,
max(order_date) last_order_date,
datediff(year, min(order_date),max(order_date)) order_range_year
from gold.fact_sales;

-- find the youngest and the oldest customer
select 
min(birthdate) as oldest_customer,
max(birthdate) as youngest_customer,
datediff(year,min(birthdate), getdate()) as oldest_age,
datediff(year,max(birthdate), getdate()) as youngest_age
from gold.dim_customers;