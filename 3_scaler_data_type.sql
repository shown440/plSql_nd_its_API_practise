set serveroutput on;
declare
    myName varchar2(20);
    emp_job varchar2(20);
    count_loop binary_integer := 0;
    dept_total_sal number(9,2) default 0; /*default and := is same. both are used to assignment for value*/
    order_date date := sysdate;
    c_tax_rate constant number(3,2):=8.5;
    
    emp_name EMP.ENAME%type;/*this is type attribute*/
begin
    myName := 'Shifullah Ahmed Khan';
    dbms_output.put_line('My name is : '||myName);
    dbms_output.put_line('My date is : '||TO_CHAR(order_date, 'YYYY-MM-DD HH:MI:SS'));
end;
