CREATE TRIGGER update_book_status_borrowed
    AFTER INSERT ON Borrowings
    FOR EACH ROW
    BEGIN
        UPDATE Books
        SET Status = 'Borrowed'
        WHERE BookID = NEW.BookID;
    END;
