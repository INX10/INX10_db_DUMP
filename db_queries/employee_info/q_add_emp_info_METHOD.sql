DELIMITER $$

CREATE PROCEDURE InsertData1()
BEGIN
   DECLARE result VARCHAR(10);

   INSERT INTO employee_information (first_name, middle_name, last_name)
   VALUES ('Juan', 'Dela', 'Cruz');

   SET result = 'Success';
   
   SELECT result AS message;

END $$

DELIMITER ;
