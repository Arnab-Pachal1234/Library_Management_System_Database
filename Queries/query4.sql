SELECT bk.Title, b.BorrowDate
FROM Borrowings b
JOIN Books bk ON b.BookID = bk.BookID
WHERE TIMESTAMPDIFF(MONTH,b.BorrowDate, CURDATE())=1;
