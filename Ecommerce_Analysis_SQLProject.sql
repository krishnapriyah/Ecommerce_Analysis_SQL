--Creating Database
CREATE DATABASE EcommerceDB;
GO

--Using Database
USE EcommerceDB;

--Creating tables
/*CREATE TABLE Customers(
    customer_id   INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email         VARCHAR(100),
    city          VARCHAR(50),
    age           INT
);

CREATE TABLE Orders(
   order_id      INT PRIMARY KEY,
   customer_id   INT,
   order_date    DATE,
   product       VARCHAR(100),
   category      VARCHAR(50), 
   quantity      INT,
   unit_price    FLOAT,
   total_amount  FLOAT,
   status        VARCHAR(50)
);

CREATE TABLE Payments(
   payment_id     INT PRIMARY KEY,
   order_id       INT,
   payment_date   DATE,
   payment_method VARCHAR(50),
   amount_paid    FLOAT,
   payment_status VARCHAR(50)
);*/


--Inserting data
INSERT INTO Customers(customer_id,customer_name,email,city,age)
VALUES (1,  'Priya Sharma',  'priya@gmail.com',   'Hyderabad', 28),
(2,  'Rahul Verma',   'rahul@gmail.com',   'Mumbai',    34),
(3,  'Sneha Reddy',   'sneha@gmail.com',   'Bangalore', 26),
(4,  'Arjun Nair',    'arjun@gmail.com',   'Chennai',   31),
(5,  'Divya Patel',   'divya@gmail.com',   'Delhi',     29),
(6,  'Kiran Kumar',   NULL,                'Pune',      35),  -- NULL email
(7,  'Meera Iyer',    'meera@gmail.com',   'Hyderabad', NULL),-- NULL age
(8,  'Suresh Babu',   NULL,                'Mumbai',    42),  -- NULL email
(9,  'Anjali Singh',  'anjali@gmail.com',  'Delhi',     27),
(10, 'Vikram Rao',    'vikram@gmail.com',  'Bangalore', 33),
(11, 'Lakshmi Devi',  'lakshmi@gmail.com', 'Chennai',   38),
(12, 'Mohan Das',     NULL,                NULL,        NULL),-- all NULLs
(13, 'Ravi Shankar',  'ravi@gmail.com',    'Hyderabad', 30),
(14, 'Pooja Mehta',   'pooja@gmail.com',   'Delhi',     25),
(15, 'Deepak Joshi',  'deepak@gmail.com',  'Pune',      44);

INSERT INTO Orders VALUES
(1001, 1,  '2024-01-05', 'Laptop',         'Electronics', 1, 45000, 45000, 'Delivered'),
(1002, 1,  '2024-01-05', 'Laptop',         'Electronics', 1, 45000, 45000, 'Delivered'),-- DUPLICATE
(1003, 2,  '2024-01-10', 'Mobile',         'Electronics', 2, 15000, 30000, 'Delivered'),
(1004, 3,  '2024-01-15', 'Saree',          'Clothing',    3, 2000,  6000,  'Delivered'),
(1005, 4,  '2024-01-18', 'Headphones',     'Electronics', 1, 3000,  3000,  'Cancelled'),
(1006, 5,  '2024-02-01', 'Refrigerator',   'Appliances',  1, 25000, 25000, 'Delivered'),
(1007, 6,  '2024-02-05', 'Mobile',         'Electronics', 1, 15000, 15000, 'Delivered'),
(1008, 7,  '2024-02-10', 'Shoes',          'Clothing',    2, 1500,  3000,  'Delivered'),
(1009, 8,  '2024-02-14', 'Laptop',         'Electronics', 1, 45000, 45000, 'Returned'),
(1010, 9,  '2024-02-20', 'Mixer Grinder',  'Appliances',  1, 4000,  4000,  'Delivered'),
(1011, 10, '2024-03-01', 'Kurta',          'Clothing',    4, 800,   3200,  'Delivered'),
(1012, 10, '2024-03-01', 'Kurta',          'Clothing',    4, 800,   3200,  'Delivered'),-- DUPLICATE
(1013, 11, '2024-03-05', 'Washing Machine','Appliances',  1, 18000, 18000, 'Delivered'),
(1014, 13, '2024-03-10', 'Mobile',         'Electronics', 1, 15000, 15000, 'Delivered'),
(1015, 14, '2024-03-15', 'Headphones',     'Electronics', 2, 3000,  6000,  'Delivered'),
(1016, 14, '2024-03-15', 'Headphones',     'Electronics', 2, 3000,  6000,  'Delivered'),-- DUPLICATE
(1017, 15, '2024-03-20', 'Saree',          'Clothing',    2, 2000,  4000,  'Delivered'),
(1018, 2,  '2024-03-25', 'Laptop',         'Electronics', 1, 45000, 45000, 'Delivered'),
(1019, 3,  '2024-04-01', 'Mobile',         'Electronics', 1, 15000, 15000, 'Delivered'),
(1020, 5,  '2024-04-05', 'Shoes',          'Clothing',    3, 1500,  4500,  'Delivered');

INSERT INTO Payments VALUES
(2001, 1001, '2024-01-05', 'UPI',         45000, 'Completed'),
(2002, 1002, '2024-01-05', 'UPI',         45000, 'Completed'),
(2003, 1003, '2024-01-10', 'Credit Card', 30000, 'Completed'),
(2004, 1004, '2024-01-15', 'Debit Card',  6000,  'Completed'),
(2005, 1005, '2024-01-18', 'UPI',         3000,  'Refunded'),
(2006, 1006, '2024-02-01', 'Net Banking', 25000, 'Completed'),
(2007, 1007, '2024-02-05', 'UPI',         15000, 'Completed'),
(2008, 1008, '2024-02-10', 'Credit Card', 3000,  'Completed'),
(2009, 1009, '2024-02-14', 'Debit Card',  45000, 'Refunded'),
(2010, 1010, '2024-02-20', 'UPI',         4000,  'Completed'),
(2011, 1011, '2024-03-01', 'Net Banking', 3200,  'Completed'),
(2012, 1013, '2024-03-05', 'Credit Card', 18000, 'Completed'),
(2013, 1014, '2024-03-10', 'UPI',         15000, 'Completed'),
(2014, 1015, '2024-03-15', 'Debit Card',  6000,  'Completed'),
(2015, 1017, '2024-03-20', 'UPI',         4000,  'Completed'),
(2016, 1018, '2024-03-25', 'Credit Card', 45000, 'Completed'),
(2017, 1019, '2024-04-01', 'UPI',         15000, 'Completed'),
(2018, 1020, '2024-04-05', 'Net Banking', 4500,  'Completed');
-- Orders 1012 and 1016 intentionally have no payment


--Section-1
-- Query1 ==> Show all customers with their orders
SELECT c.customer_id,c.customer_name,o.order_id,o.order_date,o.product,o.total_amount,o.status
FROM Customers c
INNER JOIN Orders o
ON c.customer_id=o.customer_id
ORDER BY o.order_date;

--Query2  ==> Show all customers even if they never ordered
SELECT  c.customer_id,c.customer_name,o.order_id,o.order_date,o.product,o.total_amount,o.status
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id=o.customer_id
ORDER BY c.customer_id;


--Query3  ==> Which customers have never ordered
SELECT c.*
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id=o.customer_id
WHERE o.order_id is null;


--Query4 ==> Full order and payment details per customer
SELECT c.customer_name,c.city,o.order_id,o.product,o.total_amount,o.status,p.payment_id,p.payment_date
FROM Customers c
INNER JOIN Orders o
ON c.customer_id=o.customer_id
INNER JOIN Payments p
ON o.order_id=p.order_id;


--Query5 ==> Which orders have missing payment records
SELECT o.order_id,o.order_date,o.product,o.status,p.payment_id,p.payment_date,p.payment_status
FROM Orders o
LEFT JOIN payments p
ON o.order_id=p.order_id 
WHERE p.payment_id IS NULL;



--Section-2
--Query6  ==> Which customers have no email on record
SELECT customer_id,customer_name,city,email
FROM Customers
WHERE email IS NULL;


--Query7  ==> Which customers have missing age data
SELECT customer_id,customer_name,age
FROM Customers
WHERE age IS NULL;


--Query8  ==> Replace NULLs with default values of customer table  for clean reporting
SELECT customer_id,customer_name,
       ISNULL(email,'Not Provided') AS Email,
       ISNULL(city,'city unknown') AS City,
       ISNULL(CAST(age as VARCHAR), 'unknown')AS Age
FROM Customers

--Query9  ==> Show best available contact info per customer
SELECT customer_id,customer_name,
       COALESCE(email,city,'No Contact Info')
FROM Customers;


--Query10 ==> How many customers have missing data
SELECT COUNT(*) AS Total_count,                        --counts all values
       COUNT(email) AS Email_count,                    --counts non-null values
       COUNT(age) AS Age_count,                        --counts non null values
       COUNT(*) - COUNT(email) AS missing_email_data,  --counts all values - non null email values
       COUNT(*) - COUNT(age) AS missing_age_data       --counts all values - non null age values
FROM Customers;


--Section-3
--Query11 ==> Are there any double-entered orders
SELECT  customer_id,product,order_date,total_amount,
        COUNT(*) AS occurrence_count
FROM Orders
GROUP BY customer_id, product, order_date, total_amount
HAVING COUNT(*) > 1;                  -- Any row with count > 1 is a DUPLICATE!



--Query12 ==> Show full details of all duplicate records
SELECT o.*
FROM Orders o
INNER JOIN (
    SELECT customer_id, product, order_date, total_amount
    FROM Orders
    GROUP BY customer_id, product, order_date, total_amount
    HAVING COUNT(*) > 1
) dup
ON  o.customer_id  = dup.customer_id
AND o.product      = dup.product
AND o.order_date   = dup.order_date
AND o.total_amount = dup.total_amount
ORDER BY o.customer_id;
/*Step 1: find duplicates   ...subquery in INNERJOIN ...
  Step 2: show full details ...INNER JOIN and all on conditions*/


--Query13 ==> Keep only first occurrence using ROW_NUMBER()
WITH RemoveDuplicates AS (
    SELECT *,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id, product, order_date, total_amount
            ORDER BY order_id
        ) AS row_num
    FROM Orders
)
SELECT * FROM RemoveDuplicates
WHERE row_num = 1;


--Query14 ==> Deletion of Duplicates
--Method-1 :
WITH RemoveDuplicates AS (
    SELECT *,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id, product, order_date, total_amount
            ORDER BY order_id
        ) AS row_num
    FROM Orders)
SELECT * FROM RemoveDuplicates  -- DELETE FROM RemoveDuplicates
WHERE row_num > 1;

-- Method-2 
SELECT p2.*  --DELETE p2.*
FROM Orders p1
INNER JOIN Orders p2
    ON  p1.customer_id  = p2.customer_id
    AND p1.product      = p2.product
    AND p1.order_date   = p2.order_date
    AND p1.total_amount = p2.total_amount
    AND p1.order_id     < p2.order_id;


--Query15 ==> How many duplicate rows exist in the table

SELECT
    COUNT(*)                          AS total_rows,
    COUNT(DISTINCT order_id)          AS unique_orders,
    COUNT(*)-COUNT(DISTINCT order_id) AS duplicate_rows
FROM Orders;


--Query16 ==> What are the unique products sold
SELECT DISTINCT category,product
FROM Orders
Order by category,product;

--Section-4
--Query17 ==> Combined all 3 concepts into one clean business report
WITH CleanOrders AS (
    SELECT *,ROW_NUMBER() OVER (
             PARTITION BY customer_id, product, order_date, total_amount
             ORDER BY order_id) AS row_num
    FROM Orders
)
SELECT c.customer_name,
       ISNULL(c.city,  'Unknown')          AS city,
       ISNULL(c.email, 'Not Provided')     AS email,
       COUNT(o.order_id)                   AS total_orders,
       ISNULL(SUM(o.total_amount), 0)      AS total_spent,
       ISNULL(MAX(p.payment_method), 'No Payment') AS payment_method
FROM Customers c
LEFT JOIN CleanOrders o ON c.customer_id = o.customer_id AND o.row_num = 1
LEFT JOIN Payments    p ON o.order_id    = p.order_id
GROUP BY c.customer_name, c.city, c.email
ORDER BY total_spent DESC;