prompt >> create public synonym for package utl_millis
CREATE OR REPLACE PUBLIC SYNONYM utl_millis FOR utl_millis; 
/
prompt >> grant execute permission on package for public usage
GRANT EXECUTE ON utl_millis TO PUBLIC;
/