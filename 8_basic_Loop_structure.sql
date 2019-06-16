/* Formatted on 4/9/2019 11:04:40 AM (QP5 v5.287) */
/*#### BASIC LOOP #####*/

DECLARE
   x   NUMBER := 10;
BEGIN
   DBMS_OUTPUT.put_line ('before loop x is : ' || x);

   LOOP
      DBMS_OUTPUT.put_line ('In loop x is : ' || x);
      x := x+10;
      IF x > 50 THEN
         EXIT;
      END IF;
   END LOOP;

   DBMS_OUTPUT.put_line ('After loop x is :' || x);
END;