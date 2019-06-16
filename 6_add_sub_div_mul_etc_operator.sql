/* Formatted on 4/8/2019 5:12:26 PM (QP5 v5.287) */
SET SERVEROUTPUT ON;

DECLARE
   num1   NUMBER := 8;
   num2   NUMBER := 2;
BEGIN
   DBMS_OUTPUT.put_line ('num1+num2='||TO_NUMBER(num1+num2)); --addition
    dbms_output.put_line('num1-num2='||TO_NUMBER(num1-num2)); --Substraction
    dbms_output.put_line('num1/num2='||TO_NUMBER(num1/num2)); --Division
    dbms_output.put_line('num1*num2='||TO_NUMBER(num1*num2)); --Multiplication
    dbms_output.put_line('num1^num2='||TO_NUMBER(num1**num2)); --Exponential / Power
END;