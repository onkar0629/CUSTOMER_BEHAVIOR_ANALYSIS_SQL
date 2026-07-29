-- ##########################################################################
-- PROJECT      : Customer Behavior Analysis
-- FILE         : 04_data_validation.sql
-- AUTHOR       : Onkar Jadhav
-- DESCRIPTION  : Validate imported data
-- ##########################################################################

USE customer_behavior_analysis;

-- ==========================================================
-- Record Count Validation
-- ==========================================================

SELECT 'channels' AS table_name, COUNT(*) AS total_records FROM channels
UNION ALL
SELECT 'categories', COUNT(*) FROM categories
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'customers', COUNT(*) FROM customers
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items;

-- ==========================================================
-- Preview Data
-- ==========================================================

SELECT * FROM channels LIMIT 5;
SELECT * FROM categories LIMIT 5;
SELECT * FROM products LIMIT 5;
SELECT * FROM customers LIMIT 5;
SELECT * FROM orders LIMIT 5;
SELECT * FROM order_items LIMIT 5;

-- ==========================================================
-- Duplicate Primary Key Check
-- ==========================================================

SELECT customer_id, COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT order_id, COUNT(*)
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

SELECT product_id, COUNT(*)
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;

-- ==========================================================
-- NULL Primary Key Check
-- ==========================================================

SELECT COUNT(*) AS null_customer_id
FROM customers
WHERE customer_id IS NULL;

SELECT COUNT(*) AS null_order_id
FROM orders
WHERE order_id IS NULL;

SELECT COUNT(*) AS null_product_id
FROM products
WHERE product_id IS NULL;

-- ==========================================================
-- Foreign Key Validation
-- ==========================================================

-- Orders without Customers
SELECT COUNT(*) AS invalid_customer_records
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- Order Items without Orders
SELECT COUNT(*) AS invalid_order_records
FROM order_items oi
LEFT JOIN orders o
ON oi.order_id = o.order_id
WHERE o.order_id IS NULL;

-- Order Items without Products
SELECT COUNT(*) AS invalid_product_records
FROM order_items oi
LEFT JOIN products p
ON oi.product_id = p.product_id
WHERE p.product_id IS NULL;

-- ==========================================================
-- Date Validation
-- ==========================================================

SELECT *
FROM orders
WHERE order_date > CURDATE();

-- ==========================================================
-- Revenue Validation
-- ==========================================================

SELECT
    COUNT(*) AS total_orders,
    ROUND(SUM(total_amount), 2) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM orders;