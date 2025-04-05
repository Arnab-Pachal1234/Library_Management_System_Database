
 CREATE TABLE Books (
       BookID INT AUTO_INCREMENT PRIMARY KEY,
        Title VARCHAR(255) NOT NULL,
      Author VARCHAR(255) NOT NULL,
      PublicationYear INT CHECK (PublicationYear > 0),
     Status ENUM('Available', 'Borrowed') DEFAULT 'Available'
    );

 CREATE TABLE Members (
     MemberID INT AUTO_INCREMENT PRIMARY KEY,
     Name VARCHAR(255) NOT NULL,
     Contact VARCHAR(15) UNIQUE NOT NULL,
     Email VARCHAR(255) UNIQUE NOT NULL,
     Enrollmemt_Date DATETIME DEFAULT CURRENT_TIMESTAMP
    );
 CREATE TABLE Borrowings (
        BorrowID INT AUTO_INCREMENT PRIMARY KEY,
        MemberID INT,
        BookID INT,
        BorrowDate DATE NOT NULL DEFAULT (CURRENT_DATE),
        ReturnDate DATE,
        FOREIGN KEY (MemberID) REFERENCES Members(MemberID) ON DELETE CASCADE,
        FOREIGN KEY (BookID) REFERENCES Books(BookID) ON DELETE CASCADE
    );
