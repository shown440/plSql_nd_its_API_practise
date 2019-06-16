declare
a number;
b number;
c number;

PROCEDURE find_minimum(x in number, y in number, z out number) IS -- AS = Non stand alone procedure  
BEGIN
    if x<y then
        z:=x;
    else
        z:=y;
    end if;
END;

begin
    a:=73;
    b:=45;
    find_minimum(a,b,c);
    dbms_output.put_line('minimum value of '||a||' and '||b||' is '||c);
end;