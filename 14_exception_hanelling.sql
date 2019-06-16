declare
    emp_id emp.empno%type;
    emp_name EMP.ENAME%type;
        
begin
    select empno, ename into emp_id, emp_name
    from emp
    where empno=7839;
    dbms_output.put_line('ID: '||emp_id||' Name: '||emp_name);
    
    Exception
        when no_data_found then
            dbms_output.put_line('Such employee not found...');
    
end;