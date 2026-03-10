# 🛒 E-Commerce SQL Analysis
### Concepts Covered: JOINs | NULLs | Duplicates

> A hands-on SQL project analyzing e-commerce customer, order and payment data using SQL Server (SSMS)

---

##  Problem Statement

Raw e-commerce data is messy — customers have missing contact details, orders get double-entered, and payments don't always match orders. This project solves real data quality problems while answering key business questions using SQL.

---

## Tools Used

![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![SSMS](https://img.shields.io/badge/SSMS-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)

---

##  Database Structure

Three related tables were created to simulate a real e-commerce database:

```
Customers    ────────────       Orders          ──────────── Payments
(customer_id)            (customer_id, order_id)             (order_id)
```

| Table | Rows | Key Feature |
|---|---|---|
| Customers | 15 | Contains NULL emails and ages |
| Orders | 20 | Contains intentional duplicate entries |
| Payments | 18 | Some orders have no payment recorded |

---

##  Project Structure

```
ecommerce-sql-analysis/
├── README.md
├── sql/
│   └── ecommerce_sql_analysis.sql    ← All queries in one file
└── visuals/
    ├── inner_join_result.png
    ├── left_join_nulls.png
    ├── duplicate_orders.png
    └── final_combined_query.png
```

---

##  Analysis Performed

### Section 1 — JOINs

| Query | Business Question |
|---|---|
| INNER JOIN | Which customers have placed orders? |
| LEFT JOIN | Show ALL customers including those with no orders |
| LEFT JOIN + WHERE NULL | Which customers have NEVER ordered? |
| 3-Table JOIN | Full order and payment details per customer |
| Orders with no Payment | Which orders have missing payment records? |

**Key Learning:**
- `INNER JOIN` → only matching rows from both tables
- `LEFT JOIN` → all rows from left table + matches from right
- `WHERE col IS NULL` after LEFT JOIN → finds records that don't exist in the second table

---

###  Section 2 — NULLs

| Query | Business Question |
|---|---|
| Find NULL emails | Which customers have no email on record? |
| Find NULL ages | Which customers have missing age data? |
| ISNULL() | Replace NULLs with default values for clean reporting |
| COALESCE() | Show best available contact info per customer |
| COUNT with NULLs | How many customers have missing data? |

**Key Learning:**
- `NULL` is not zero or empty — it means value is **unknown**
- Always use `IS NULL` not `= NULL`
- `COUNT(*)` counts all rows, `COUNT(column)` skips NULLs
- `ISNULL(col, 'default')` replaces NULL with a fallback value
- `COALESCE(col1, col2, 'fallback')` returns first non-NULL value

---

###  Section 3 — Duplicates

| Query | Business Question |
|---|---|
| Find duplicates | Are there any double-entered orders? |
| View duplicate rows | Show full details of all duplicate records |
| Remove duplicates | Keep only first occurrence using ROW_NUMBER() |
| Count unique vs total | How many duplicate rows exist in the table? |
| DISTINCT products | What are the unique products sold? |

**Key Learning:**
- Use `GROUP BY + HAVING COUNT(*) > 1` to detect duplicates
- Use `ROW_NUMBER() OVER (PARTITION BY ...)` to tag duplicates
- `row_num = 1` = original row to keep
- `row_num > 1` = duplicate row to remove

---

###  Section 4 — Final Combined Query

Combined all 3 concepts into one clean business report:
- Removed duplicate orders using `ROW_NUMBER()` inside a CTE
- Used `LEFT JOIN` to include customers with no orders
- Used `ISNULL()` to handle missing city, email, and payment info
- Produced a **clean customer revenue summary** sorted by total spend

---

##  Key Insights

-  **1 customer (Mohan Das)** had no orders and missing contact info — flagged for data cleanup
-  **3 duplicate order pairs** were found — orders 1001/1002, 1011/1012, 1015/1016
-  **2 orders had no payment recorded** — orders 1012 and 1016 need follow-up
-  **4 customers had NULL emails** — reducing marketing reach
-  **Top spender** after deduplication was Rahul Verma (Mumbai)

---

##  How to Run

1. Open **SSMS** and connect to your SQL Server instance
2. Open `sql/ecommerce_sql_analysis.sql`
3. Run the full script — it creates the database, tables, inserts data, and runs all queries
4. Run each section separately to study results one concept at a time

---

##  Concepts Reference Card

```
JOINS:
  INNER JOIN  → only matching rows
  LEFT JOIN   → all from left + matches from right

NULLS:
  IS NULL          → check for missing values
  ISNULL(col, val) → replace NULL with default
  COALESCE(a,b,c)  → return first non-NULL

DUPLICATES:
  GROUP BY + HAVING COUNT(*) > 1  → detect duplicates
  ROW_NUMBER() OVER (PARTITION BY) → tag duplicates
  WHERE row_num = 1                → keep originals only
```

---

##  Author

**Krishna Priya M** — Data Analyst
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/krishna-priya-magapu/)
[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:priya.magapu.sk@gmail.com)

---

> 💬 *"Good data analysis starts with clean data — and clean data starts with handling NULLs, duplicates and proper joins."*
