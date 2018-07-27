CREATE OR REPLACE PACKAGE utl_millis AS

  /**
  * Converts provided timestamp in milliseconds.
  *
  * @param p_timestamp timestamp to convert in milliseconds.
  * @return datetime in milliseconds.
  */
  FUNCTION to_time_millis (
    p_timestamp IN TIMESTAMP
  ) RETURN NUMBER;

  /**
  * Converts date object to a timestamp and then convert it in milliseconds.
  *
  * @param p_date_input date to convert in milliseconds.
  * @return datetime in milliseconds.
  */
  FUNCTION date_to_millis (
    p_date_input IN DATE
  ) RETURN NUMBER;

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
  ) RETURN NUMBER;

  /**
  * Returns current timestamp as milliseconds.
  * @return datetime in milliseconds.
  */
  FUNCTION current_time_millis RETURN NUMBER;

END utl_millis;
/

SHOW ERRORS
/