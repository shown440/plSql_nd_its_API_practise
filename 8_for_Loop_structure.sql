/* Formatted on 4/9/2019 11:15:33 AM (QP5 v5.287) */
/*#### BASIC LOOP #####*/

DECLARE
   x   NUMBER;
BEGIN
   DBMS_OUTPUT.put_line ('before loop x is : ' || x);

   FOR x IN 10..15 LOOP
      DBMS_OUTPUT.put_line ('In loop x is : ' || x);
      --x := x + 10;
   END LOOP;
   --######### Reverse For Loop ##########
   FOR x IN REVERSE 10..15 LOOP
      DBMS_OUTPUT.put_line ('In loop x is : ' || x);
      --x := x + 10;
   END LOOP;
   DBMS_OUTPUT.put_line ('After loop x is :' || x);
END;