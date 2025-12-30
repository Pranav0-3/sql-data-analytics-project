-- Dimension Exploration

-- Explore all countries our customers comes from
select distinct country from gold.dim_customers;

-- Explore all categories from products"The Major Divisions"
select 
distinct category,subcategory, product_name 
from gold.dim_products
order by 1,2,3;
