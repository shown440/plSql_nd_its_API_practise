create or replace function total_employees
   return number 
   IS
   total_number number := 0;                                        -- AS = Non stand alone procedure
   BEGIN
    select count(EMPNO) into total_number
    from emp;
    return total_number;
   END;