prompt >> drops package body
BEGIN
  EXECUTE IMMEDIATE 'DROP PACKAGE BODY utl_millis';
EXCEPTION
  WHEN OTHERS THEN
    IF
      sqlcode !=-4043
    THEN
      RAISE;
    END IF;
END;
/
SHOW ERRORS
/

prompt >> drops package head
BEGIN
  EXECUTE IMMEDIATE 'DROP PACKAGE utl_millis';
EXCEPTION
  WHEN OTHERS THEN
    IF
      sqlcode !=-4043
    THEN
      RAISE;
    END IF;
END;
/
SHOW ERRORS
/