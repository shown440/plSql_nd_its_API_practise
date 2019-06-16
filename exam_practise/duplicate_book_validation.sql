declare
db_book_count number;
begin
    begin
        select count(NAME) into db_book_count from ADMIN.BOOK_INFORMATION where NAME = :P3_NAME;
    end;
    if db_book_count > 0 then
        dbms_output.put_line('Book Have');
     --return 'This book is already exist..';
    else
        dbms_output.put_line('No Book');
     --return null;
    end if;
end;