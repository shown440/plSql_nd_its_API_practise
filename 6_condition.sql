/* Formatted on 4/8/2019 5:12:26 PM (QP5 v5.287) */
--SET SERVEROUTPUT ON;

DECLARE
   num1   NUMBER := 8;
   num2   NUMBER := 2;
   num3   NUMBER := 2;
   letter varchar2(1) := 'm';
   letter2 varchar2(1);
   a boolean := true;
   b boolean := false;
BEGIN
    IF(num1=num2) THEN
        DBMS_OUTPUT.put_line ('num1 and num2 is equal');
    ELSIF(num1!=num2) THEN
        DBMS_OUTPUT.put_line ('num1 and num2 are not equal');
    ELSIF(num3<>num2) THEN
        DBMS_OUTPUT.put_line ('num1 and num2 are not equal');
    ELSIF(num3~=num2) THEN
        DBMS_OUTPUT.put_line ('num1 and num2 are not equal');
    END IF;
--############################################################
    DBMS_OUTPUT.put_line ('##################################');
    IF(num1 BETWEEN 2 and 10) THEN
        DBMS_OUTPUT.put_line ('True'); 
    END IF;
--############################################################
    DBMS_OUTPUT.put_line ('##################################');
    IF(letter in ('a','b','m')) THEN
        DBMS_OUTPUT.put_line ('Letter is found');
    ELSE
        DBMS_OUTPUT.put_line ('Letter is not found ...');
    END IF;
--############################################################
    DBMS_OUTPUT.put_line ('##################################');
    IF(letter2 is null) THEN
        DBMS_OUTPUT.put_line ('Letter is Null');
    ELSE
        DBMS_OUTPUT.put_line ('Letter is not Null ...');
    END IF;
--############################################################
    DBMS_OUTPUT.put_line ('################ AND ##################');
    IF(a and b) THEN
        DBMS_OUTPUT.put_line ('True');
    ELSE
        DBMS_OUTPUT.put_line ('False');
    END IF;
    DBMS_OUTPUT.put_line ('################ OR ##################');
    IF(a or b) THEN
        DBMS_OUTPUT.put_line ('True');
    ELSE
        DBMS_OUTPUT.put_line ('False');
    END IF;
    DBMS_OUTPUT.put_line ('################ NOT ##################');
    IF(not b) THEN
        DBMS_OUTPUT.put_line ('True');
    ELSE
        DBMS_OUTPUT.put_line ('False');
    END IF;
END;