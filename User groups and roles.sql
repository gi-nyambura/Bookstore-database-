CREATE ROLE 'admin_role';
CREATE ROLE 'analyst_role';
CREATE ROLE 'readonly_role';
-- Admins can do everything
GRANT ALL PRIVILEGES ON Bookstore.* TO 'admin_role';

-- Analysts can read data and run queries
GRANT SELECT ON Bookstore.* TO 'analyst_role';

-- Read-only users can only select
GRANT SELECT ON Bookstore.* TO 'readonly_role';
CREATE USER 'susan'@'localhost' IDENTIFIED BY '123';
GRANT 'admin_role' TO 'susan'@'localhost';

CREATE USER 'john'@'localhost' IDENTIFIED BY '1234';
GRANT 'analyst_role' TO 'john'@'localhost';
