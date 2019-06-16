/* Formatted on 4/9/2019 11:15:33 AM (QP5 v5.287) */
/*#### BASIC LOOP #####*/

DECLARE
   x   NUMBER;
   y   NUMBER;
BEGIN
   DBMS_OUTPUT.put_line ('before loop x is : ' || x);

   <<outer_loop>>
   FOR x IN 1..3 LOOP
        <<inner_loop>>
        FOR y IN 1..3 LOOP
            
            IF y>2 THEN
                EXIT outer_loop;
            ELSE
                DBMS_OUTPUT.put_line ('X is : '||x||' , '||'Y is : '||y);
            END IF;
            
        END LOOP;
   END LOOP;
   DBMS_OUTPUT.put_line ('After loop x is :' || x);
END;