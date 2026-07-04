# Retail Sales SQL Project

A relational database project built using **MySQL 8.0** to simulate a retail sales management system. This project demonstrates database design, normalization, table relationships, and SQL concepts from beginner to advanced.

---


# 📌 Project Overview

The **Retail Sales SQL Project** is designed to simulate a real-world retail sales database. It includes customers, products, suppliers, categories, orders, and order items with properly defined relationships using primary and foreign keys.

The project is being developed in phases, starting with database design and sample data creation, followed by SQL query practice and advanced database concepts.

---

# 🛠️ Technologies Used

* MySQL 8.0
* SQL
* Git & GitHub

---

# 📂 Database Schema

The project currently contains the following tables:

* Customers
* Categories
* Suppliers
* Products
* Orders
* Order_Items

---

# 🔗 Database Relationships

* One Customer → Many Orders
* One Category → Many Products
* One Supplier → Many Products
* One Order → Many Order Items
* One Product → Many Order Items

---

# 📊 Current Dataset

The database has been populated with realistic sample data.

| Table       | Records |
| ----------- | ------: |
| Customers   |      15 |
| Categories  |      10 |
| Suppliers   |      10 |
| Products    |      30 |
| Orders      |      25 |
| Order_Items |      50 |

---

# ✅ Completed Features

## Database Design

* Created the `retail_sales` database
* Designed a normalized relational database
* Created all required tables

## Constraints Implemented

* Primary Keys
* Foreign Keys
* AUTO_INCREMENT
* UNIQUE Constraints
* NOT NULL Constraints
* DEFAULT Values

## Sample Data

Inserted realistic sample data for:

* Customers
* Categories
* Suppliers
* Products
* Orders
* Order Items

---

# 📖 SQL Concepts Covered

## Database Design

* CREATE DATABASE
* USE
* CREATE TABLE
* Primary Keys
* Foreign Keys
* Data Types
* Constraints
* Relationships

## Data Manipulation

* INSERT
* Multiple Row INSERT

---

# 📁 Project Structure

```text
Retail-Sales-SQL-Project/
│
├── schema.sql
├── sample_data.sql
├── README.md
└── screenshots/
```

---

# 🚀 How to Run

1. Clone this repository.
2. Open MySQL Workbench (or another MySQL client).
3. Run `schema.sql` to create the database and tables.
4. Run `sample_data.sql` to populate the database.
5. Start executing SQL queries for analysis and reporting.

---

# 📈 Project Progress

| Phase                           |     Status    |
| ------------------------------- | :-----------: |
| Database Design                 |  ✅ Completed  |
| Table Creation                  |  ✅ Completed  |
| Constraints                     |  ✅ Completed  |
| Relationships                   |  ✅ Completed  |
| Sample Data                     |  ✅ Completed  |
| Basic SQL Queries               | ⏳ In Progress |
| Aggregate Functions             |   ⏳ Pending   |
| GROUP BY & HAVING               |   ⏳ Pending   |
| JOINs                           |   ⏳ Pending   |
| Subqueries                      |   ⏳ Pending   |
| Common Table Expressions (CTEs) |   ⏳ Pending   |
| Window Functions                |   ⏳ Pending   |
| Views                           |   ⏳ Pending   |
| Stored Procedures               |   ⏳ Pending   |
| Triggers                        |   ⏳ Pending   |
| Indexing & Query Optimization   |   ⏳ Pending   |
| Business Reports                |   ⏳ Pending   |
| Final Documentation             |   ⏳ Pending   |

---

# 🎯 Next Milestones

The next phase of the project will focus on solving SQL problems using the current dataset.

Topics include:

* SELECT
* WHERE
* ORDER BY
* DISTINCT
* LIMIT
* LIKE
* BETWEEN
* IN
* IS NULL
* Aliases
* UPDATE
* DELETE
* Aggregate Functions
* GROUP BY
* HAVING
* JOINs
* Subqueries
* CTEs
* Window Functions

---

# 🎯 Learning Objectives

This project is being developed to strengthen practical SQL skills for:

* Data Analyst roles
* SQL Developer roles
* Backend Developer database fundamentals

The goal is to build a complete SQL portfolio project by progressing from beginner SQL concepts to advanced analytical queries.

---

# 👨‍💻 Author

Developed as a hands-on SQL portfolio project using **MySQL 8.0**, with a focus on real-world database design, query writing, and business data analysis.
