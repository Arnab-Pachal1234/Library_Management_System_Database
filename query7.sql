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
