--1.Find all books borrowed by a particular user

SELECT Users.name, Books.title, BorrowingRecords.borrow_date, BorrowingRecords.return_date
FROM BorrowingRecords
JOIN Users ON BorrowingRecords.user_id = Users.user_id
JOIN Books ON BorrowingRecords.book_id = Books.book_id
WHERE Users.name = 'Sarang Bainalwar';


--2.List all overdue books (assuming a book is overdue if it's not returned within 15 days)

SELECT Users.name, Books.title, BorrowingRecords.borrow_date
FROM BorrowingRecords
JOIN Users ON BorrowingRecords.user_id = Users.user_id
JOIN Books ON BorrowingRecords.book_id = Books.book_id
WHERE BorrowingRecords.return_date IS NULL AND BorrowingRecords.borrow_date < CURDATE() - INTERVAL 15 DAY;


--3. Count the number of books in each genre

SELECT genre, COUNT(*) AS number_of_books
FROM Books
GROUP BY genre;


--4. Get the user who has borrowed the most books

SELECT Users.name, COUNT(*) AS books_borrowed
FROM BorrowingRecords
JOIN Users ON BorrowingRecords.user_id = Users.user_id
GROUP BY Users.name
ORDER BY books_borrowed DESC
LIMIT 1;


