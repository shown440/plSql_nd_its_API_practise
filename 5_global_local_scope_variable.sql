set serveroutput on;
<<global_lebel>>
declare
    --Global Variable
    num1 number default 90;
    num2 number := 95;  /*default and := is same. both are used to assignment for value*/

    --emp_name EMP.ENAME%type;/*this is type attribute*/
begin
    dbms_output.put_line('Global Variable num1 : '||num1);
    dbms_output.put_line('Global Variable num2 : '||num2);
    dbms_output.put_line('###################################');
    <<local_lebel_1>>
    declare
        --Local Variable 1
        num1 number default 190;
        num2 number := 195;
    begin
        dbms_output.put_line('Local Variable num1 : '||num1);
        dbms_output.put_line('Local Variable num2 : '||num2);
        dbms_output.put_line('global_lebel Variable num1 : '||global_lebel.num1);
        dbms_output.put_line('global_lebel Variable num2 : '||global_lebel.num2);
        dbms_output.put_line('###################################');
        declare
            --Local Variable 1
            num1 number default 290;
            num2 number := 295;
        begin
            dbms_output.put_line('Local Variable num1 : '||num1);
            dbms_output.put_line('Local Variable num2 : '||num2);
            dbms_output.put_line('local_lebel_1 Variable num1 : '||local_lebel_1.num1);
            dbms_output.put_line('local_lebel_1 Variable num2 : '||local_lebel_1.num2);
            dbms_output.put_line('global_lebel Variable num1 : '||global_lebel.num1);
            dbms_output.put_line('global_lebel Variable num2 : '||global_lebel.num2);
        end;
    end;
end;
