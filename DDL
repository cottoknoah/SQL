CREATE DATABASE IF NOT EXISTS game_store;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    house_number INT NOT NULL,
    postcode VARCHAR(55) NOT NULL
);

CREATE TABLE products (
	product_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
	price DECIMAL(6,2) NOT NULL,
	stock INT NOT NULL
);

CREATE TABLE orders (
	order_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	customer_id INT NOT NULL,
	product_id INT NOT NULL,
	date_placed DATE NOT NULL,
	quantity INT NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (product_id) REFERENCES products(product_id)
);

SHOW TABLES;
