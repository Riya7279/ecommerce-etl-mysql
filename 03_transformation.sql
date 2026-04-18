-- STEP 3: ETL (Transform + Load)

INSERT INTO sales_clean (
   order_id,
   customer_name,
   product,
   category,
   price,
   quantity,
   total_amount,
   order_date
)
SELECT 
   order_id,
   TRIM(customer_name),
   product,
   category,
   price,
   quantity,
   price * quantity AS total_amount,
   order_date
FROM sales_raw
WHERE price > 0
AND order_id NOT IN (
    SELECT order_id FROM sales_clean
);