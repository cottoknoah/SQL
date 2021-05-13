--Note: next time add '_db' at the end for database
USE gamer_store;

# SHOW GRANTS for 'root'@'localhost';
# DROP DATABASE IF EXISTS gamer_store;
# TRUNCATE <table_name>;

--Customers Table

INSERT INTO customers (name, email, house_number, postcode)
VALUES ('Knoah', 'knoah@email.com', 22, 78234);
INSERT INTO customers (name, email, house_number, postcode)
VALUES ('Joel', 'joel@email.com', 56, 78932);
INSERT INTO customers (name, email, house_number, postcode)
VALUES ('Brandon', 'brandon@email.com', 101, 98321);
INSERT INTO customers (name, email, house_number, postcode)
VALUES ('Shirley', 'shirley@email.com', 28, 61932);
INSERT INTO customers (name, email, house_number, postcode)
VALUES ('Brittany', 'brittany@email.com', 12, 98310);

--Products Table

INSERT INTO products(title, price, stock)
VALUES('BioShock Infinite', 59.99, 12);
INSERT INTO products(title, price, stock)
VALUES('Donkey Kong 64', 18.99, 26);
INSERT INTO products(title, price, stock)
VALUES('Tony Hawk''s Pro Skater 3', 24.39, 31);
INSERT INTO products(title, price, stock)
VALUES('Spyro 2: Seaons of Flame', 32.73, 10);
INSERT INTO products(title, price, stock)
VALUES('Tetris', 3000.00, 1);


--Orders Table

INSERT INTO orders(customer_id, product_id, date_placed, quantity)
VALUES(1, 1, '2021-05-12', 1);
INSERT INTO orders(customer_id, product_id, date_placed, quantity)
VALUES(1, 5, '2021-05-12', 1);
INSERT INTO orders(customer_id, product_id, date_placed, quantity)
VALUES(2, 4, '2021-05-13', 1);
INSERT INTO orders(customer_id, product_id, date_placed, quantity)
VALUES(3, 2, '2021-05-14', 1);
INSERT INTO orders(customer_id, product_id, date_placed, quantity)
VALUES(3, 3, '2021-05-14', 1);
INSERT INTO orders(customer_id, product_id, date_placed, quantity)
VALUES(4, 3, '2021-05-14', 2);
INSERT INTO orders(customer_id, product_id, date_placed, quantity)
VALUES(5, 4, '2021-05-15', 1);

---Note: there's an incorrect record. To change/update a record in the database use queries below---
SELECT * 
FROM products 
WHERE product_id = 4;

UPDATE products
SET title = 'Spyro 2: Seasons of Flame'
WHERE product_id = 4;
