CREATE OR REPLACE FUNCTION get_emp_tf (p_id IN EMP.EMPNO%type) 
RETURN t_tf_emp PIPELINED IS
out_rec t_emp := t_emp(null, null, null);

BEGIN
  FOR i in (select ENAME, JOB, DATE_OF_BIRTH from emp where EMPNO = p_id) LOOP
    --out_rec.ENAME := i.ENAME;
    out_rec.JOB := i.JOB;
    out_rec.DATE_OF_BIRTH := i.DATE_OF_BIRTH;
    pipe row(out_rec);
  END LOOP;

  RETURN;
END;