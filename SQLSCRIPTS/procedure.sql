DELIMITER //

CREATE PROCEDURE InsertMember (
    IN p_Name VARCHAR(255),
    IN p_Contact VARCHAR(15),
    IN p_Email VARCHAR(255)
)
BEGIN
    INSERT INTO Members (Name, Contact, Email)
    VALUES (p_Name, p_Contact, p_Email);
END //

DELIMITER ;
