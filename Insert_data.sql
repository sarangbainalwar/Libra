USE LibraryManagement;

INSERT INTO Books (book_id, title, author, genre, year_of_publication)
VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960),
(2, '1984', 'George Orwell', 'Dystopian', 1949),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925);

INSERT INTO Users (user_id, name, email, phone)
VALUES
(1, 'Sarang Bainalwar', 'sarangbainalwar@gmail.com', '1234567804'),
(2, 'Rex Stone', 'rexstone@gmail.com', '7418529632'),
(3, 'sam bucha', 'sam@example.com', '7456981230');

INSERT INTO BorrowingRecords (borrow_id, user_id, book_id, borrow_date, return_date)
VALUES
(1, 1, 1, '2024-09-01', '2024-09-15'),
(2, 2, 2, '2024-09-10', '2024-09-25'),
(3, 3, 3, '2024-09-12', NULL);
