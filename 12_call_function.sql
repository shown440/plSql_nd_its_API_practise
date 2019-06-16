declare
    a number;
    b number;
    call_func number;
BEGIN
    a := 50;
    b := 100;
    call_func := find_maximum(a,y=>b);
    dbms_output.put_line('Max number is : '||call_func);
END;