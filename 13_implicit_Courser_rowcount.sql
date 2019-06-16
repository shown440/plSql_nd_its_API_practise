declare
    total_rows number;
begin
    update emp 
    set ename = 'Blake'
    where empno =7698;
    if sql%notfound then
        dbms_output.put_line('No data found...');
    elsif sql%found then
        total_rows := sql%rowcount;
        dbms_output.put_line(total_rows||' rows updated');
    end if;

end;