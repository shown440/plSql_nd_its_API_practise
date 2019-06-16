select level, 
       last_name label, 
       'f?p=&APP_ID.:'||employee_id||':'||:APP_SESSION||'::::P1_EMPNO:'||employee_id target,
       'NO' is_current,
       '#APP_IMAGES#del.gif' image
from HR.EMPloyees
start with Manager_id is null
connect by prior employee_id = Manager_id 
order siblings by last_name