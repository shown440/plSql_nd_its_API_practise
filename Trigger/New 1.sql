-- os user
select sys_context( 'userenv', 'os_user' ) from dual;

-- Desktop name
select UTL_INADDR.GET_HOST_NAME from dual;