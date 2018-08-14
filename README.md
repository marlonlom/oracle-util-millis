# Oracle utility for display dates and timestamps in Unix time format (UTL_UNIXTIME)

Oracle utility package for getting unix timestamp in milliseconds from dates and timestamps.


## Usages

### a) Using current timestamp

```sql
SELECT utl_unixtime.current_time_millis FROM dual;
-- returns unix timestamp from database.
```

### b) Using a date

```sql
SELECT utl_unixtime.date_to_millis(p_date_input => current_date) FROM dual;
-- returns current date as unix timestamp from database.
```

### c) Using provided date as text and datetime format.

```sql
SELECT utl_unixtime.to_time_millis(p_date_text => '2003/07/09',p_date_format => 'yyyy/mm/dd') FROM dual;
-- returns 1057785728978.
```

_For more examples of datetime formats: [function to_date (from dba-oracle.com)](http://www.dba-oracle.com/f_to_date.htm)_


## How to install

1. Download the latest release -- https://github.com/marlonlom/oracle-util-millis/releases
2. Extract the zip file
3. Use `sql*plus`, or something capable of running `sql*plus` scripts, to run the `install.sql` script.
4. To test the implementation, run the `/tests/*.sql` scripts.

**NOTICE:**
Tested in Oracle 11g and 12c.


## Project folders and files

+ **install.sql** install the _utl_unixtime_ package in your schema.
+ **src/**  source code in PL/SQL, it is accessed by the install script.
+ **tests/** useful examples to learn how to use _utl_unixtime_.


## Contributing

Please follow the [contributing guidelines](CONTRIBUTING.md) to submit fixes or new features.


## License

[MIT License](LICENSE)
