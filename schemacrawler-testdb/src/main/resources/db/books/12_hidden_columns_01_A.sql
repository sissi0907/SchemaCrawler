-- Oracle: Generated (but not hidden) columns
CREATE TABLE X_EMPLOYEES( 
  EMPLOYEEID INTEGER NOT NULL,
  EMPLOYEE_NAME VARCHAR2(30), 
  START_DATE DATE, 
  END_DATE DATE, 
  ANNUAL_SALARY INTEGER,
  HOURLY_RATE GENERATED ALWAYS AS (ANNUAL_SALARY/2080), 
  ACTIVE AS (CASE WHEN END_DATE IS NULL THEN 'Y' ELSE 'N' END)
); 

-- Oracle 12: Hidden column (but not generated)
CREATE TABLE X_CUSTOMERS
(
  CUSTOMERID INTEGER NOT NULL,
  CUSTOMER_NAME VARCHAR(80),
  SOCIAL_SECURITY_NUMBER CHAR(9) INVISIBLE
);