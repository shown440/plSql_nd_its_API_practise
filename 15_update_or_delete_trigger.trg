create or replace trigger customer_log
before delete or update on MY_CUSTOMER
for each row
when(new.id>0)
begin
    insert into MY_CUSTOMER
    values(
      :old.id,
      :old.name,
      :old.salary,
      :new.salary  
    );
end;