Create DATABASE ecommerce_etl;
Use ecommerce_etl;

-- Raw Table
Create Table sales_raw(
	order_id INT,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    order_date DATE
);

-- Cleaned table
CREATE TABLE sales_clean (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    total_amount DECIMAL(10,2),
    order_date DATE
);
