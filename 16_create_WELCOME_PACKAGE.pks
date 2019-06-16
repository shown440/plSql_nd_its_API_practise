CREATE OR REPLACE PACKAGE welcome_package
AS
   FUNCTION myMorning (my_Morning IN VARCHAR2)
      RETURN VARCHAR2;

   FUNCTION myAfterNoon (my_AfterNoon IN VARCHAR2)
      RETURN VARCHAR2;

   PROCEDURE MyEvening (my_Evening IN VARCHAR2);

   PROCEDURE MyNight (my_Night IN VARCHAR2);

END welcome_package;
/