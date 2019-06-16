/* Formatted on 4/9/2019 3:04:45 PM (QP5 v5.287) */
DECLARE
   TYPE name_array IS VARRAY (5) OF VARCHAR2 (20);  -- type attribute declared

   TYPE grade_array IS VARRAY (5) OF INTEGER;       -- type attribute declared

   names   name_array;
   marks   grade_array;
   total   NUMBER;
BEGIN
   names :=
      name_array ('Shown',
                  'Shifullah',
                  'Papon',
                  'Ratul',
                  'Seium');
   marks :=
      grade_array (95,
                   90,
                   82,
                   54,
                   72);
   total := names.COUNT;
   DBMS_OUTPUT.put_line ('Total number of students : ' || total);

   FOR i IN 1 .. total
   LOOP
      DBMS_OUTPUT.put_line (
         'Student ' || names (i) || ' Get ' || marks (i) || ' marks');
   END LOOP;
END;