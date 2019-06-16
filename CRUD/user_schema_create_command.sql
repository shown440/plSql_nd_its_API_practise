SELECT username, account_status FROM dba_users 
WHERE username = 'SHIFULLAH';

grant dba to user;

create tablespace shaon_data datafile 'E:\app\user\virtual\oradata\orcl\orclpdb\sdata.dbf'