/* Formatted on 4/9/2019 11:00:25 AM (QP5 v5.287) */
DECLARE
   a   CHAR (1) := 'b';
BEGIN
   CASE a
      WHEN 'A'
      THEN
         DBMS_OUTPUT.put_line ('A found.');
      WHEN 'B'
      THEN
         DBMS_OUTPUT.put_line ('B found.');
      ELSE
         DBMS_OUTPUT.put_line (a || ' is not found.');
   END CASE;
END;