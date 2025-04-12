-- 1. Use existing database: Bookstore
USE Bookstore;

-- 2. Create table: country
CREATE TABLE country (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL
);

-- 3. Create table: address
CREATE TABLE address (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(255),
    city VARCHAR(100),
    zip_code VARCHAR(20),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

-- 4. Create table: address_status
CREATE TABLE address_status (
    status_id INT AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(50) NOT NULL
);

-- 5. Create table: customer
CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20),
    registration_date DATE
);

-- 6. Create table: customer_address
CREATE TABLE customer_address (
    customer_id INT,
    address_id INT,
    status_id INT,
    PRIMARY KEY (customer_id, address_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id),
    FOREIGN KEY (status_id) REFERENCES address_status(status_id)
);

-- Insert into customer (Table 6)
INSERT INTO customer (customer_id, name, email) VALUES
(1, 'Alice Kimani', 'alicekimani@gmail.com'),
(2, 'Brian Otieno', 'brianotieno@gmail.com'),
(3, 'Cynthia Njeri', 'cynthianjeri@gmail.com'),
(4, 'David Mwangi', 'davidmwangi@gmail.com'),
(5, 'Evelyn Achieng', 'evelynachieng@gmail.com'),
(6, 'Felix Kiprono', 'felixkiprono@gmail.com'),
(7, 'Grace Wambui', 'gracewambui@gmail.com'),
(8, 'Hassan Ali', 'hassanali@gmail.com'),
(9, 'Irene Chebet', 'irenechebet@gmail.com'),
(10, 'John Karanja', 'johnkaranja@gmail.com');

-- Insert into address_status (Table 8)
INSERT INTO address_status (status_id, status) VALUES
(1, 'Current'),
(2, 'Old'),
(3, 'Billing'),
(4, 'Shipping'),
(5, 'Work'),
(6, 'Home'),
(7, 'Primary'),
(8, 'Temporary'),
(9, 'Permanent'),
(10, 'Archived');

-- Insert into country (Table 10)
INSERT INTO country (country_id, country_name) VALUES
(1, 'Kenya'),
(2, 'Uganda'),
(3, 'Tanzania'),
(4, 'Rwanda'),
(5, 'Ethiopia'),
(6, 'Nigeria'),
(7, 'Ghana'),
(8, 'South Africa'),
(9, 'Botswana'),
(10, 'Zimbabwe');

-- Insert into address (Table 9)
INSERT INTO address (address_id, street, city, zip_code, country_id) VALUES
(1, 'Moi Avenue', 'Nairobi', '00100', 1),
(2, 'Tom Mboya Street', 'Nairobi', '00101', 1),
(3, 'Luwum Street', 'Kampala', '00200', 2),
(4, 'Uhuru Street', 'Dar es Salaam', '00300', 3),
(5, 'KG 11 Avenue', 'Kigali', '00400', 4),
(6, 'Churchill Avenue', 'Addis Ababa', '00500', 5),
(7, 'Awolowo Road', 'Lagos', '00600', 6),
(8, 'Oxford Street', 'Accra', '00700', 7),
(9, 'Long Street', 'Cape Town', '00800', 8),
(10, 'Lobatse Road', 'Gaborone', '00900', 9);

-- Insert into customer_address (Table 7) with duplicates allowed
INSERT INTO customer_address (customer_id, address_id, status_id) VALUES
(1, 1, 1),
(1, 2, 3),
(2, 3, 1),
(3, 4, 2),
(4, 5, 4),
(5, 6, 5),
(6, 7, 6),
(7, 8, 1),
(8, 9, 1),
(9, 10, 3),
(10, 1, 7),
(10, 2, 7);
