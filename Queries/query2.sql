SELECT b.BorrowID, bk.Title, b.BorrowDate, b.ReturnDate
FROM Borrowings b
JOIN Books bk ON b.BookID = bk.BookID
WHERE b.MemberID = 1; -- Replace with specific MemberID
