# 📚 Library Management System

A simple SQL-based Library Management System to manage *books, **members, and **borrowing records* efficiently.

---

## 🚀 Features

- Tracks all books with title, author, year, and status (available/borrowed)
- Maintains member details including contact information
- Records borrowings and returns with dates
- Supports queries to:
  - Identify overdue books
  - Track borrowing history
  - Find most borrowed books or active members

---

## 🧱 Tech Stack

- *MySQL*
- *SQL Joins & Aggregations*
- *SQL Date Functions*

---

## 📂 Database Schema

### 🧾 Tables:
- *Books*: Stores book info (BookID, Title, Author, PublicationYear, Status)
- *Members*: Stores member info (MemberID, Name, Contact, Email)
- *Borrowings*: Records borrowing activity (BorrowID, MemberID, BookID, BorrowDate, ReturnDate)

---

## 📊 Sample Queries Implemented

1. List all available books
2. Get the borrowing history of a specific member
3. Update book status after it is borrowed
4. Find books borrowed in the last month
5. Identify overdue books
6. Delete a member’s record after membership expiration
7. Calculate the total number of books borrowed in a year
8. Retrieve most borrowed books
9. Identify members with the highest borrowing frequency
10. Find books borrowed by multiple members

---

## 🛠 How to Use

1. *Clone the repo* or copy the SQL scripts
2. Import into any MySQL environment (e.g. MySQL Workbench)
3. Run the CREATE DATABASE and CREATE TABLE scripts
4. Insert the sample data
5. Execute queries to test

---
