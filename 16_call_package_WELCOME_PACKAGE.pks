--set serveroutput on;
DECLARE 
   my_Morning_line VARCHAR2(50) := 'Good Morning';
   my_Afternoon_line VARCHAR2(50) := 'Good Afternoon';
   my_Evening_line VARCHAR2(50) := 'Good Evening';
   my_Night_line VARCHAR2(50) := 'Good Night';
   
   my_output1 VARCHAR2(50);  
   my_output2 VARCHAR2(50); 
BEGIN 
   my_output1 := welcome_package.myMorning(my_Morning_line); 
   dbms_output.put_line(my_output1);
   
   dbms_output.put_line('##############################');
   
   my_output2 := welcome_package.myAfterNoon(my_Afternoon_line); 
   dbms_output.put_line(my_output2);
   
   dbms_output.put_line('##############################');
   welcome_package.MyEvening(my_Evening_line);
   
   dbms_output.put_line('##############################');
   welcome_package.MyNight(my_Night_line); 
   
END; 
/