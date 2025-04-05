SELECT COUNT(*) AS TotalBorrowedBooks
FROM Borrowings
WHERE YEAR(BorrowDate) = YEAR(CURDATE());
