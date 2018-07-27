CLEAR SCREEN
SET SERVEROUTPUT ON
SET TERMOUT OFF

DECLARE
  /**
  * Checks if date as text and datetime format provided is equal to expected unix timestamp.
  */
  PROCEDURE test_assert_date_text_ok IS

    lv_date_text         VARCHAR2(100 CHAR) DEFAULT '2018/07/28 22:40:24';
    lv_date_format       VARCHAR2(100 CHAR) DEFAULT 'YYYY/MM/DD HH24:MI:SS';
    --
    lv_millis            NUMBER;
    lv_millis_expected   NUMBER DEFAULT 1532835624000;
  BEGIN
    lv_millis := utl_millis.to_time_millis(p_date_text => lv_date_text,p_date_format => lv_date_format);
    IF
      ( lv_millis <> lv_millis_expected )
    THEN
      raise_application_error(-20000,'[test_assert_date_text_ok] failed: not equals (returned '
      || lv_millis || ',expected '||lv_millis_expected||').');
    END IF;

  END test_assert_date_text_ok;

BEGIN
  test_assert_date_text_ok;
EXCEPTION
  WHEN OTHERS THEN
    dbms_output.put_line('ERRORS:'
    || chr(10)
    || dbms_utility.format_error_stack);
END;
/
SHOW ERRORS
/
SET TERMOUT ON
/
SET SERVEROUTPUT OFF
/