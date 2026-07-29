-- ##########################################################################
-- PROJECT      : Customer Behavior Analysis
-- FILE         : 03_load_data.sql
-- AUTHOR       : Onkar Jadhav
-- DESCRIPTION  : Load CSV files into MySQL tables
-- ##########################################################################

USE customer_behavior_analysis;

-- ==========================================================
-- Disable Foreign Key Checks
-- ==========================================================

SET FOREIGN_KEY_CHECKS = 0;

-- ==========================================================
-- Load Channels
-- ==========================================================

LOAD DATA LOCAL INFILE '/Users/onkar/PycharmProjects/CUSTOMER_BEHAVIOR_ANALYSIS_SQL/Data/CLEANED/channels_cleaned.csv'
INTO TABLE channels
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ==========================================================
-- Load Categories
-- ==========================================================

LOAD DATA LOCAL INFILE '/Users/onkar/PycharmProjects/CUSTOMER_BEHAVIOR_ANALYSIS_SQL/Data/CLEANED/categories_cleaned.csv'
INTO TABLE categories
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ==========================================================
-- Load Products
-- ==========================================================

LOAD DATA LOCAL INFILE '/Users/onkar/PycharmProjects/CUSTOMER_BEHAVIOR_ANALYSIS_SQL/Data/CLEANED/products_cleaned.csv'
INTO TABLE products
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ==========================================================
-- Load Customers
-- ==========================================================

LOAD DATA LOCAL INFILE '/Users/onkar/PycharmProjects/CUSTOMER_BEHAVIOR_ANALYSIS_SQL/Data/CLEANED/customers_cleaned.csv'
INTO TABLE customers
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ==========================================================
-- Load Orders
-- ==========================================================

LOAD DATA LOCAL INFILE '/Users/onkar/PycharmProjects/CUSTOMER_BEHAVIOR_ANALYSIS_SQL/Data/CLEANED/orders_cleaned.csv'
INTO TABLE orders
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ==========================================================
-- Load Order Items
-- ==========================================================

LOAD DATA LOCAL INFILE '/Users/onkar/PycharmProjects/CUSTOMER_BEHAVIOR_ANALYSIS_SQL/Data/CLEANED/order_items_cleaned.csv'
INTO TABLE order_items
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ==========================================================
-- Enable Foreign Key Checks
-- ==========================================================

SET FOREIGN_KEY_CHECKS = 1;
