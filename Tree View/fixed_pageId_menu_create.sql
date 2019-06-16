SELECT null, 
       ENAME label, 
       'f?p=&APP_ID.:1:'||:APP_SESSION||'::::P1_EMPNO:'||empno target, 
       null is_current
FROM  MENU 