USE Bookstore;

--create cust_order table
CREATE TABLE cust_order (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    shipping_method_id INT,
    book_id INT,
    quantity INT,

    FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(shipping_method_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);

-- create order_line table
CREATE TABLE order_line (
    order_id INT,
    book_id INT,
    quantity INT,
    PRIMARY KEY (order_id, book_id),
    FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);

-- create shipping_method table
CREATE TABLE shipping_method (
    shipping_method_id INT PRIMARY KEY AUTO_INCREMENT,
    method_name VARCHAR(100) NOT NULL,
);

-- create order_history table
CREATE TABLE order_history (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    status_id INT,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
    FOREIGN KEY (status_id) REFERENCES order_status(status_id)
);

-- create order_status table
CREATE TABLE order_status (
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    status_name VARCHAR(100) NOT NULL
);

-- Insert into shipping_method
INSERT INTO shipping_method (shipping_method_id, method_name) VALUES
(1, 'Standard Shipping'),
(2, 'Express Delivery'),
(3, 'Same Day Delivery'),
(4, 'Next Day Delivery'),
(5, 'Two-Day Shipping'),
(6, 'Pickup from Store'),
(7, 'Economy Shipping'),
(8, 'International Shipping'),
(9, 'Courier Service'),
(10, 'Drone Delivery');

-- Insert into order_status
INSERT INTO order_status (status_id, status_name) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Delivered'),
(5, 'Cancelled'),
(6, 'Returned'),
(7, 'Refunded'),
(8, 'Awaiting Payment'),
(9, 'Completed'),
(10, 'On Hold');

-- Insert into cust_order
INSERT INTO cust_order (order_id, shipping_method_id, book_id, quantity) VALUES
(1, 2, 1, 2),
(2, 3, 2, 1),
(3, 5, 3, 3),
(4, 1, 4, 1),
(5, 6, 5, 2),
(6, 4, 6, 1),
(7, 9, 7, 4),
(8, 8, 8, 2),
(9, 10, 9, 1),
(10, 7, 10, 5);

-- Insert into order_line
INSERT INTO order_line (order_id, book_id, quantity) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(3, 3, 2),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 2),
(8, 8, 1),
(9, 9, 1);

-- Insert into order_history
INSERT INTO order_history (history_id, order_id, status_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);