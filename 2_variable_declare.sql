/*PL-SQL are 4 types:
    1. Scalar variable = is hold a single value. Ex: varchar2, varchar, date, number etc.
    2. Composit variable = 
    3. Reference variable = 
    4. Large object variable(LOV) = 
    #############################
    PL_SQL er baire SQL er variable gula k Bind variable bola hoi*/
declare
    myName varchar2(20);
    emp_hiredate date;
    emp_deptNo number(2) not null default 10; /*default and := is same. both are used to assignment for value*/
    emp_commission constant number := 1500; /*for declare constant variable*/
begin
    myName := 'Shifullah Ahmed Khan';
    dbms_output.put_line('My name is : '||myName);
end;
