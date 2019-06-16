create or replace trigger customer_log
before delete or update on SHIFULLAH.MY_CUSTOMER
REFERENCING NEW AS NEW OLD AS OLD
for each row
when(new.id=old.id)
begin
    insert into SHIFULLAH.MY_CUSTOMER_LOG
    values(
      :old.id,
      :old.name,
      :old.salary,
      :new.salary  
    );
end;