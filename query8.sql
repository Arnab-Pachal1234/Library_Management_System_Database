 select SELECT m.Name, COUNT(b.BorrowID) AS TotalBorrows
    FROM Borrowings b
    JOIN Members m ON b.MemberID = m.MemberID
    GROUP BY m.Name
    ORDER BY TotalBorrows DESC
    LIMIT 3;