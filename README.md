Library Management System
Overview
This Library Management System is a simple SQL-based project designed to manage and organize the records of a library. The system allows library administrators to store and manage information about books, users, and borrowing records, ensuring efficient tracking of book loans and returns. This project showcases fundamental database design principles and demonstrates how SQL can be used to perform essential operations like creating tables, inserting data, and querying for useful information.

Purpose
The purpose of this project is to create a relational database system for a library. It focuses on organizing the data in a structured manner and facilitating easy retrieval of information. This system provides features such as:

Keeping track of books in the library.
Managing user information.
Recording borrowing transactions and book returns.
This project can be useful for showcasing SQL skills in interviews, as it covers core database management concepts such as table creation, relationships between tables, data insertion, and writing SQL queries to retrieve meaningful information.

Database Schema
The database schema includes the following three tables:

1. Books
This table stores information about all the books in the library, including the book’s title, author, genre, and year of publication.

Column	Data Type	Description
book_id	INT	Unique identifier for each book.
title	VARCHAR(100)	The title of the book.
author	VARCHAR(100)	The author of the book.
genre	VARCHAR(50)	The genre or category of the book.
year_of_publication	INT	The year the book was published.
2. Users
This table stores information about users, such as their name, email, and phone number.

Column	Data Type	Description
user_id	INT	Unique identifier for each user.
name	VARCHAR(100)	The name of the user.
email	VARCHAR(100)	The user's email address.
phone	VARCHAR(15)	The user's phone number.
3. BorrowingRecords
This table records the borrowing history of users, including which user borrowed which book, the borrow date, and the return date. The user_id and book_id columns reference the Users and Books tables, respectively, establishing relationships between them.

Column	Data Type	Description
borrow_id	INT	Unique identifier for each borrowing record.
user_id	INT	Refers to the user_id in the Users table.
book_id	INT	Refers to the book_id in the Books table.
borrow_date	DATE	The date when the book was borrowed.
return_date	DATE	The date when the book was returned (or NULL if not yet returned).

How to Run the Project
Set Up MySQL: Ensure MySQL is installed and running on your machine.
Execute SQL Files:
Run the queries in schema.sql to create the tables.
Run the queries in insert_data.sql to populate the tables with sample data.
Run Queries: You can now execute custom queries to interact with the database and retrieve relevant information, such as borrowing records or user details.
Key Learnings and Concepts
Through this project, you will learn:

Basic SQL commands to create tables, insert data, and query information.
Relationships between tables using foreign keys.
How to organize and manage data for a library system.
How to join multiple tables and retrieve information based on specific conditions.
