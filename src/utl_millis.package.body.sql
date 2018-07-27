CREATE OR REPLACE PACKAGE BODY utl_millis AS

  /**
  * Converts provided timestamp in milliseconds.
  *
  * @param p_timestamp timestamp to convert in milliseconds.
  * @return datetime in milliseconds.
  */
  FUNCTION to_time_millis (
    p_timestamp IN TIMESTAMP
  ) RETURN NUMBER IS
    out_result          NUMBER;
    beginning_of_time   TIMESTAMP DEFAULT to_timestamp('1970-01-01','YYYY-MM-DD');
  BEGIN
    out_result := extract ( DAY FROM ( sys_extract_utc(p_timestamp) - beginning_of_time ) ) * 86400000 + to_number(TO_CHAR(sys_extract_utc(p_timestamp),'SSSSSFF3'));
    RETURN out_result;
  END to_time_millis;

  /**
  * Converts date as text to a timestamp using datetime format and then convert it in milliseconds.
  *
  * @param p_date_text date as text to convert in milliseconds.
  * @param p_date_text datetime format for convert date to a timestamp.
  * @return datetime in milliseconds.
  */
  FUNCTION to_time_millis (
    p_date_text     IN VARCHAR2,
    p_date_format   IN VARCHAR2
  ) RETURN NUMBER
    IS
  BEGIN
    RETURN to_time_millis(p_timestamp => to_timestamp(p_date_text,p_date_format) );
  END to_time_millis;

  /**
  * Converts date object to a timestamp and then convert it in milliseconds.
  *
  * @param p_date_input date to convert in milliseconds.
  * @return datetime in milliseconds.
  */
  FUNCTION date_to_millis (
    p_date_input IN DATE
  ) RETURN NUMBER IS
    date_as_timestamp   TIMESTAMP;
  BEGIN
    date_as_timestamp := CAST(p_date_input AS TIMESTAMP);
    RETURN to_time_millis(p_timestamp => date_as_timestamp);
  END date_to_millis;

  /**
  * Returns current timestamp as milliseconds.
  * @return datetime in milliseconds.
  */
  FUNCTION current_time_millis RETURN NUMBER
    IS
  BEGIN
    RETURN to_time_millis(current_timestamp);
  END current_time_millis;

END utl_millis;
/

SHOW ERRORS
/