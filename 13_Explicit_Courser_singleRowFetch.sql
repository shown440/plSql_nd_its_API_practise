declare
    emp_id emp.empno%type;
    emp_name EMP.ENAME%type;
    emp_position EMP.JOB%type;
    cursor my_employees is
        select empno, ename, job
        from emp
        where empno=7839;
begin
    open my_employees;
        --loop
            fetch my_employees into emp_id, emp_name, emp_position;
            if my_employees%found then
                dbms_output.put_line('ID: '||emp_id||' Name: '||emp_name||' Designation: '||emp_position);
            elsif my_employees%notfound then
                dbms_output.put_line('Data not found...');
            end if;    
        --end loop;
    close my_employees;
end;