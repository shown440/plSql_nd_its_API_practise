select level, 
       PROGDESC label, 
       'f?p=&APP_ID.:'||PAGEID||':'||:APP_SESSION target,
       'NO' is_current,
       '#APP_IMAGES#del.gif' image
from MENU
start with PARENTCODE is null
connect by prior PROGCODE = PARENTCODE
order siblings by PROGDESC