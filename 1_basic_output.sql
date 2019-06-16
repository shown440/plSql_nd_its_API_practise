declare
    emp_name varchar2(20);
begin
    select ENAME into emp_name
    from EMP
    where EMPNO=7698;
    dbms_output.put_line('Employee name : '||emp_name);
end;