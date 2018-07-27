CLEAR SCREEN
SET SERVEROUTPUT ON
SET TERMOUT OFF

DECLARE
  /**
  * Checks if date value provided is equal to expected unix timestamp.
  */
  PROCEDURE test_assert_dateobj_text_ok IS
    lv_date_input        VARCHAR2(100 CHAR) DEFAULT TO_DATE('2003/07/09','yyyy/mm/dd');
    --
    lv_millis            NUMBER;
    lv_millis_expected   NUMBER DEFAULT 1057726800000;
  BEGIN
    lv_millis := utl_millis.date_to_millis(p_date_input => lv_date_input);
    IF
      ( lv_millis <> lv_millis_expected )
    THEN
      raise_application_error(-20000,'[test_assert_dateobj_text_ok] failed: not equals (returned '
      || lv_millis || ',expected ' || lv_millis_expected || ').');

    END IF;

  END test_assert_dateobj_text_ok;

BEGIN
  test_assert_dateobj_text_ok;
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