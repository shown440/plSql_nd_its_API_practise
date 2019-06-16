declare
    emp_id emp.empno%type :=7839;
    emp_name EMP.ENAME%type;
    invalid_id exception;
        
begin
    if emp_id<0 then
            raise invalid_id;
    else
        select empno, ename into emp_id, emp_name
        from emp
        where empno=emp_id;
        dbms_output.put_line('ID: '||emp_id||' Name: '||emp_name);
    end if;
    Exception
        when invalid_id then
            dbms_output.put_line('Id shouldn''t be less than 0');
        when no_data_found then
            dbms_output.put_line('Such employee not found...');
    
end;