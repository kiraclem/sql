-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL,
    product_name VARCHAR(35) NOT NULL,
    product_price FLOAT NOT NULL,
    quantity INTEGER NOT NULL
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (201, 'French Toast', 5.60, 1),
(207, 'Blueberry Pancake', 6.50, 2),
(202, 'Scrambled Eggs', 2.50, 1),
(210, 'Breakfast Sandwhich', 5.50, 1),
(201, 'Mango Lemonade', 3.50, 1);

-- Select all the records from the orders table.
SELECT * FROM orders;
-- Calculate the total number of products ordered.
SELECT COUNT(*) FROM orders
-- Calculate the total order price.
SELECT SUM(product_price) FROM orders                       --23.6 is the sum
-- Calculate the total order price by a single person_id.
SELECT SUM(product_price) FROM orders
WHERE person_id = 201;                                       --9.1 is the total for person 201