-- create a function
-- Divides and returns the first by the second
DROP FUNCTION IF EXISTS SafeDiv;
DELIMITER $$
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
  IF b = 0 THEN
    RETURN 0;
  ELSE 
    RETURN (a * 1.0) / b;
  END IF;
END;$$
DELIMITER ;