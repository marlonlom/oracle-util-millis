prompt >> create public synonym for package utl_unixtime
CREATE OR REPLACE PUBLIC SYNONYM utl_unixtime FOR utl_unixtime; 
/
prompt >> grant execute permission on package for public usage
GRANT EXECUTE ON utl_unixtime TO PUBLIC;
/