CREATE OR REPLACE PACKAGE BODY welcome_package AS  

   FUNCTION myMorning(my_Morning IN VARCHAR2)  
        RETURN VARCHAR2 
        IS 
            mySentence VARCHAR2(50); 
        BEGIN 
           mySentence := my_Morning||' Shifullah';
           RETURN mySentence; 
        END; 
        
   FUNCTION myAfterNoon(my_AfterNoon IN VARCHAR2)  
        RETURN VARCHAR2 
        IS 
            mySentence VARCHAR2(50); 
        BEGIN 
           mySentence := my_AfterNoon||' Shifullah';
           RETURN mySentence; 
        END; 
   
   PROCEDURE MyEvening(my_Evening IN VARCHAR2) IS 
       mySentence VARCHAR2(50);
       BEGIN 
          mySentence := my_Evening||' Shifullah';
          dbms_output.put_line(mySentence); 
       END; 
       
   PROCEDURE MyNight(my_Night IN VARCHAR2) IS 
       mySentence VARCHAR2(50);
       BEGIN 
          mySentence := my_Night||' Shifullah';
          dbms_output.put_line(mySentence); 
       END;
       
END welcome_package; 
/