CREATE DATABASE test_db;
USE test_db;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2)
);

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(1, 101, '2023-01-01', 250.00),
(2, 102, '2023-01-02', 150.00),
(3, 101, '2023-01-05', 100.00),
(4, 103, '2023-01-07', 300.00);
-- Total amount spent by each customer.
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id;
-- Orders placed after '2023-01-03'.
SELECT *
FROM orders
WHERE order_date > '2023-01-03';
--  Customers who made more than one order.
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;
-- If you want to see all the data at any time.
SELECT * FROM orders;





