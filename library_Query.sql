SELECT Users.name, Books.title, BorrowingRecords.borrow_date, BorrowingRecords.return_date
FROM BorrowingRecords
JOIN Users ON BorrowingRecords.user_id = Users.user_id
JOIN Books ON BorrowingRecords.book_id = Books.book_id
WHERE Users.name = 'Sarang Bainalwar';
