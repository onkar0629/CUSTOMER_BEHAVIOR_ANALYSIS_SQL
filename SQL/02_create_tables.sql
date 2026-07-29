-- ##########################################################################
-- PROJECT      : Customer Behavior Analysis
-- FILE         : 02_create_tables.sql
-- AUTHOR       : Onkar Jadhav
-- DESCRIPTION  : Create all project tables
-- ##########################################################################

USE customer_behavior_analysis;

-- ==========================================================
-- Drop Tables (Optional)
-- ==========================================================

DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS channels;

-- ==========================================================
-- Channels
-- ==========================================================

CREATE TABLE channels (
    id INT PRIMARY KEY,
    channel_name VARCHAR(100) NOT NULL
);

-- ==========================================================
-- Categories
-- ==========================================================

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    description TEXT
);

-- ==========================================================
-- Products
-- ==========================================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category_id INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    discontinued TINYINT(1) NOT NULL,

    CONSTRAINT fk_products_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

-- ==========================================================
-- Customers
-- ==========================================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(100),
    region VARCHAR(100),
    postal_code VARCHAR(20),
    country VARCHAR(100),
    phone VARCHAR(50),
    registration_date DATE,
    channel_id INT,
    first_order_id INT,
    first_order_date DATE,
    last_order_id INT,
    last_order_date DATE,

    CONSTRAINT fk_customers_channel
        FOREIGN KEY (channel_id)
        REFERENCES channels(id)
);

-- ==========================================================
-- Orders
-- ==========================================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(12,2),
    ship_name VARCHAR(255),
    ship_address VARCHAR(255),
    ship_city VARCHAR(100),
    ship_region VARCHAR(100),
    ship_postal_code VARCHAR(20),
    ship_country VARCHAR(100),
    shipped_date DATE,

    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

-- ==========================================================
-- Order Items
-- ==========================================================

CREATE TABLE order_items (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    unit_price DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),

    PRIMARY KEY (order_id, product_id),

    CONSTRAINT fk_orderitems_order
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    CONSTRAINT fk_orderitems_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);