-- Creating the Authors table
CREATE TABLE Authors (
    author_id INT,
    author_name VARCHAR(100),
    country VARCHAR(50)
);

-- Creating the Books table
CREATE TABLE Books (
    book_id INT,
    title VARCHAR(100),
    author_id INT,
    category VARCHAR(50),
    price DECIMAL(10,2),
    published_year INT
);

-- Populating the Authors table with sample data
INSERT INTO Authors (author_id, author_name, country) VALUES
(1, 'Agatha Christie', 'United Kingdom'),
(2, 'George R.R. Martin', 'United States'),
(3, 'Haruki Murakami', 'Japan'),
(4, 'Gabriel Garcia Marquez', 'Colombia'),
(5, 'Arundhati Roy', 'India');

-- Populating the Books table with sample data
INSERT INTO Books (book_id, title, author_id, category, price, published_year) VALUES
(1, 'Murder on the Orient Express', 1, 'Mystery', 450.00, 1934),
(2, 'A Game of Thrones', 2, 'Fantasy', 850.00, 1996),
(3, 'Norwegian Wood', 3, 'Fiction', 550.00, 1987),
(4, 'One Hundred Years of Solitude', 4, 'Magic Realism', 600.00, 1967),
(5, 'The God of Small Things', 5, 'Fiction', 400.00, 1997),
(6, 'SQL for Beginners', 2, 'Programming', 750.00, 2021),
(7, 'Software Engineering 101', 3, 'Programming', 900.00, 2022),
(8, 'Storm of Swords', 2, 'Fantasy', 950.00, 2000),
(9, 'Sputnik Sweetheart', 3, 'Fiction', 500.00, 1999),
(10, 'Silent Secrets', 1, 'Mystery', 750.00, 2023);

-- Task 1: Display all books
SELECT * FROM Books;

-- Task 2: Display only the book title and price
SELECT title, price FROM Books;

-- Task 3: Display the book title as Book Name and price as Book Price using column aliases
SELECT title AS "Book Name", price AS "Book Price" FROM Books;

-- Task 4: Display all unique book categories
SELECT DISTINCT category FROM Books;

-- Task 5: Display books priced above ₹700
SELECT * FROM Books WHERE price > 700;

-- Task 6: Display books priced between ₹500 and ₹800
SELECT * FROM Books WHERE price BETWEEN 500 AND 800;

-- Task 7: Display books that belong to the Programming category
SELECT * FROM Books WHERE category = 'Programming';

-- Task 8: Display books whose titles start with the letter S
SELECT * FROM Books WHERE title LIKE 'S%';

-- Task 9: Display books published after 2020
SELECT * FROM Books WHERE published_year > 2020;

-- Task 10: Display books sorted by price in descending order
SELECT * FROM Books ORDER BY price DESC;

-- Task 11: Display the top 3 most expensive books
SELECT * FROM Books ORDER BY price DESC LIMIT 3;

-- Task 12: Find total books, total price, average price, highest price, and lowest price
SELECT 
    COUNT(book_id) AS Total_Books,
    SUM(price) AS Total_Price,
    AVG(price) AS Average_Price,
    MAX(price) AS Highest_Price,
    MIN(price) AS Lowest_Price
FROM Books;

-- Task 13: Display the average book price for each category
SELECT category, AVG(price) AS Average_Price
FROM Books
GROUP BY category;

-- Task 14: Display only those categories whose average book price is greater than ₹650
SELECT category, AVG(price) AS Average_Price
FROM Books
GROUP BY category
HAVING AVG(price) > 650;

-- Task 15: Display each book along with its author's name using an INNER JOIN
SELECT Books.title, Authors.author_name
FROM Books
INNER JOIN Authors ON Books.author_id = Authors.author_id;

-- Task 16: Display all authors along with the books they have written using a LEFT JOIN
SELECT Authors.author_name, Books.title
FROM Authors
LEFT JOIN Books ON Authors.author_id = Books.author_id;

-- Task 17: Display all books along with their author details using a RIGHT JOIN
SELECT Books.title, Authors.author_name, Authors.country
FROM Authors
RIGHT JOIN Books ON Authors.author_id = Books.author_id;

-- Task 18: Insert a new book into the Books table
INSERT INTO Books (book_id, title, author_id, category, price, published_year) 
VALUES (11, 'The Mysterious Affair at Styles', 1, 'Mystery', 400.00, 1920);

-- Task 19: Update the price of the book you inserted
UPDATE Books 
SET price = 450.00 
WHERE book_id = 11;

-- Task 20: Delete the book record that you inserted
DELETE FROM Books 
WHERE book_id = 11;

-- Task 21: Create Publishers table with constraints
CREATE TABLE Publishers (
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(100) NOT NULL UNIQUE,
    country VARCHAR(50) DEFAULT 'Unknown',
    established_year INT
);