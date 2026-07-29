# Database Schema

## Tables

### Customers
Stores customer registration and profile information.

**Primary Key**
- customer_id

**Foreign Keys**
- channel_id → Channels.id

---

### Orders
Stores customer order details.

**Primary Key**
- order_id

**Foreign Keys**
- customer_id → Customers.customer_id

---

### Order_Items
Stores products purchased in each order.

**Foreign Keys**
- order_id → Orders.order_id
- product_id → Products.product_id

---

### Products
Stores product information.

**Primary Key**
- product_id

**Foreign Keys**
- category_id → Categories.category_id

---

### Categories
Stores product category details.

**Primary Key**
- category_id

---

### Channels
Stores customer acquisition channels.

**Primary Key**
- id

---

# Relationship Summary

- One Channel → Many Customers
- One Customer → Many Orders
- One Order → Many Order Items
- One Product → Many Order Items
- One Category → Many Products