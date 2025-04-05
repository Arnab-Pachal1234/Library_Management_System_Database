SELECT b.BorrowID, m.Name, bk.Title, b.BorrowDate, b.ReturnDate
FROM Borrowings b
JOIN Books bk ON b.BookID = bk.BookID
JOIN Members m ON b.MemberID = m.MemberID
WHERE b.ReturnDate IS NULL AND b.BorrowDate <= DATE_SUB(CURDATE(), INTERVAL 5 DAY);
