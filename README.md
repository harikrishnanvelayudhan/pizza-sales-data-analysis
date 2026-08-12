# Pizza Sales Data Analysis

## Project Overview

An end-to-end Pizza Sales Data Analysis project using **MS SQL Server, SQL, Power Query, DAX and Power BI** to analyze sales performance, product performance, customer ordering patterns and key business KPIs.

The project follows the complete analytical workflow:

**Raw Data → Data Understanding → Data Cleaning → SQL Server → SQL Analysis → KPI Calculation → Power BI → Business Insights → Business Recommendations**

---

## Business Problem

The business has historical pizza sales transaction data but needs to understand its sales performance and customer ordering patterns.

This project aims to answer key business questions such as:

- What is the total revenue?
- How many orders are placed?
- How many pizzas are sold?
- What is the average order value?
- What is the average number of pizzas per order?
- Which days of the week receive the most orders?
- Which months have the highest number of orders?
- Which pizza categories generate the most revenue?
- Which pizza sizes are most popular?
- Which pizzas generate the highest revenue?
- Which pizzas generate the most orders and quantity?
- Which products are underperforming?

The objective is to transform raw transactional data into meaningful business insights and recommendations.

---

## Dataset

The dataset contains pizza sales transaction-level data.

### Key Columns

| Column | Description |
|---|---|
| `order_id` | Unique order identifier |
| `order_date` | Date of order |
| `order_time` | Time of order |
| `pizza_id` | Pizza identifier |
| `pizza_name` | Name of pizza |
| `pizza_category` | Pizza category |
| `pizza_size` | Pizza size |
| `quantity` | Number of pizzas sold |
| `unit_price` | Price per pizza |
| `total_price` | Revenue generated from the transaction |

A single order can contain multiple pizza records, therefore `COUNT(DISTINCT order_id)` is used when calculating the total number of orders.

---

## 🛠️ Tools & Technologies

- **MS SQL Server**
- **SQL**
- **Power Query**
- **DAX**
- **Microsoft Power BI**
- **Microsoft Excel**

---

## Project Workflow

```text
Raw Dataset
     ↓
Data Understanding
     ↓
Data Cleaning & Validation
     ↓
SQL Server Database
     ↓
SQL Analysis
     ↓
KPI Calculation
     ↓
Power Query Transformation
     ↓
DAX Measures
     ↓
Power BI Dashboard
     ↓
Business Insights
     ↓
Business Recommendations
```
