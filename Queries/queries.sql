--queries 1
SELECT * FROM Books
WHERE Status = 'Available';

--queries 2
SELECT b.BorrowID, bk.Title, b.BorrowDate, b.ReturnDate
FROM Borrowings b
JOIN Books bk ON b.BookID = bk.BookID
WHERE b.MemberID = 1;

--queries 3
INSERT INTO Borrowings (MemberID, BookID, BorrowDate)
VALUES (2, 3, CURDATE());

--queries 4
SELECT bk.Title, b.BorrowDate
FROM Borrowings b
JOIN Books bk ON b.BookID = bk.BookID
WHERE TIMESTAMPDIFF(MONTH,b.BorrowDate, CURDATE())=1;

--queries 5
SELECT b.BorrowID, m.Name, bk.Title, b.BorrowDate, b.ReturnDate
FROM Borrowings b
JOIN Books bk ON b.BookID = bk.BookID
JOIN Members m ON b.MemberID = m.MemberID
WHERE b.ReturnDate IS NULL AND b.BorrowDate <= DATE_SUB(CURDATE(), INTERVAL 5 DAY);

--queries 6
 DELETE FROM members
 WHERE TIMESTAMPDIFF(SECOND, Enrollment_Date, NOW()) > 5;

--queries 7
SELECT COUNT(*) AS TotalBorrowedBooks
FROM Borrowings
WHERE YEAR(BorrowDate) = YEAR(CURDATE());

--queries 8
SELECT m.Name, COUNT(b.BorrowID) AS TotalBorrows
FROM Borrowings b
JOIN Members m ON b.MemberID = m.MemberID
GROUP BY m.Name
ORDER BY TotalBorrows DESC
LIMIT 3;

--queries 9
 SELECT Title
    FROM Books
    WHERE BookID IN (
        SELECT BookID
        FROM Borrowings
        GROUP BY BookID
        HAVING COUNT(BookID) > 1
    );

--queries 10
SELECT 
    bk.Title,
    COUNT(b.BorrowID) AS borrow_count
FROM 
    Borrowings b
JOIN 
    Books bk ON b.BookID = bk.BookID
GROUP BY 
    bk.BookID, bk.Title
HAVING 
    COUNT(b.BorrowID) = (
        SELECT 
            MAX(borrow_counts.total)
        FROM (
            SELECT 
                COUNT(BorrowID) AS total
            FROM 
                Borrowings
            GROUP BY 
                BookID
        ) AS borrow_counts
    );
