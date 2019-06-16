declare
    emp_id emp.empno%type;
    emp_name EMP.ENAME%type;
    cursor my_employees is
        select empno, ename
        from emp;
begin
    open my_employees;
        loop
            fetch my_employees into emp_id, emp_name;
            if my_employees%found then
                dbms_output.put_line('ID: '||emp_id||' Name: '||emp_name);
            elsif my_employees%notfound then
                exit;
            end if;    
        end loop;
    close my_employees;
end;