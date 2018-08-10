CREATE OR REPLACE FUNCTION DEMO.DEMO_VIEW RETURN NUMBER IS
tmpVar VARCHAR(100);
/******************************************************************************
   NAME:       DEMO_VIEW
   PURPOSE:    

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        8/10/2018   Toad       1. Created this function.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     DEMO_VIEW
      Sysdate:         8/10/2018
      Date and Time:   8/10/2018, 9:19:15 AM, and 8/10/2018 9:19:15 AM
      Username:        Toad (set in TOAD Options, Procedure Editor)
      Table Name:       (set in the "New PL/SQL Object" dialog)

******************************************************************************/
BEGIN
   tmpVar := NULL;
   SELECT COLUMN2 INTO tmpVar FROM DEMO_TABLE
   WHERE COLUMN2 >= TO_CHAR(ADD_MONTHS(SYSDATE, -1));
   IF (tmpVar IS NOT NULL) THEN
       RETURN (1);
   END IF;
EXCEPTION 
    when others then RETURN (0);
END DEMO_VIEW;
/
