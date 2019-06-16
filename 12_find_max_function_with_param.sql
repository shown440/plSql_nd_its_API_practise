create or replace function find_maximum(x in number, y in number)
   return number 
   IS
   max_num number := 0;                                        -- AS = Non stand alone procedure
   BEGIN
    if x>y then
        max_num := x;
    else
        max_num := y;
    end if;
    return max_num;
   END;