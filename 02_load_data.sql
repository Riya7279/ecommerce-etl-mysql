-- Data was originally imported using MySQL Workbench Import Wizard
-- Below is equivalent SQL for reproducibility

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sales_raw.csv'
INTO TABLE sales_raw
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@order_id, @customer_name, @product, @category, @price, @quantity, @order_date)
SET 
order_id = @order_id,
customer_name = TRIM(@customer_name),
product = @product,
category = @category,
price = @price,
quantity = @quantity,
order_date = STR_TO_DATE(@order_date, '%d-%m-%Y');

