-- 1. Insert Languages
INSERT INTO book_language (language_id, language_name) VALUES
(1, 'English'),
(2, 'Kiswahili'),
(3, 'French'),
(4, 'German');

-- 2. Insert Publishers
INSERT INTO publisher (publisher_name, contact_email, contact_phone) VALUES
('Oxford University Press', 'oxfordunipress@ke.com', '25420277911'),
('Flamekeepers Publishers', 'flamekeepers@ke.com','25420577819'),
('spotlight publishing', 'spotlightpublishing@gmail.com', '25420819917'),
('HarperCollins', 'happercolins@happercolins.com', '44855912333'),
('Penguin Random House', 'Penguinhouse@prh.com','441730233870');

-- 3. Insert Authors
INSERT INTO author (first_name, last_name) VALUES
('Purity', 'Gitonga'),
('Grace', 'Somi'),
('Oxford', 'univerity press'),
('James', 'Clear'),
('Jane', 'Austen'),
('Mark', 'Manson'),
('Thomas', 'Erickson'),
('Morgan', 'Housel'),
('Dr Spencer', 'Johnson'),
('Ernest', 'Hemingway');

-- 4. Insert Books
INSERT INTO book (title, publisher_id, language_id, price, publication_date, isbn, stock_quantity) VALUES
('How to manage stress and live a happier life', 2, 1, 999,'2011-01-01', '9966790462', 100),
('The Psychology of Money', 4, 1, 1650, '2020-01-01', '9780857197689', 100),
('Atomic Habits', 5, 1, 1299, '2018-01-01', '9780735211308', 100),
('The Subtle Art of not giving a Hoot', 4, 1, 1125, '2016-01-01', '9780062457738', 100),
('Pride and Prejudice', 5, 1, 9.99, '1813-01-01', '9780141439518', 50),
('One Hundred Years of Solitude', 5, 3, 14.25, '1967-01-01', '9780060883287', 10),
('Who moved my cheese', 5, 1, 1195, '1998-01-01', '9780091816971', 100),
('Surrounded by idiots',4, 1, 1599, '1869-01-01', '9780199232765', 100),
('Kamusi ya Watoto', 1, 2, 475, '2011-01-01', '9780195737219', 50),
('Kurunzi ya marejeleo 8', 3, 2, 750, '2011-01-01', '9789966734066', 100);


-- 5. Link Books and Authors (book_author)
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1),   -- How to Manage stressand live a happier life
(2, 8),   -- The Psychology of Money
(3, 4),   -- Atomic Habits
(4, 6),   -- The Subtle Art of not giving a Hoot
(5, 5),   -- Pride & Prejudice by Austen
(6, 10),   -- 100 Years of Solitude by Márquez
(7, 9),   -- Who moved my cheese
(8, 7),   -- Surrounded by idiots
(9, 3),   -- Kamusi ya Watoto
(10, 2); -- Kurunzi ya marejeleo
