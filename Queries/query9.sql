 SELECT Title
    FROM Books
    WHERE BookID IN (
        SELECT BookID
        FROM Borrowings
        GROUP BY BookID
        HAVING COUNT(BookID) > 1
    );