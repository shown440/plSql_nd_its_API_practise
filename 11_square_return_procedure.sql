/* Formatted on 4/10/2019 9:45:32 AM (QP5 v5.287) */
DECLARE
   a             NUMBER;
   output_text   VARCHAR2 (100);


   PROCEDURE find_minimum (x IN OUT NUMBER)
   IS                                        -- AS = Non stand alone procedure
   BEGIN
      x := x * x;
   END;
BEGIN
   a := 11;
   output_text := 'Square value of ' || TO_CHAR (a) || ' is : ';
   find_minimum (x => a);
   DBMS_OUTPUT.put_line (output_text || a);
END;