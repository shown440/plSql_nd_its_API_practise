CREATE OR REPLACE FUNCTION get_emp_details (p_id IN EMP.EMPNO%type) 
RETURN t_table_emp_total PIPELINED IS
out_rec t_emp_total := t_emp_total(null, null, null, null, null, null, null);

BEGIN
  FOR i in (select ENAME, JOB, MGR, DATE_OF_BIRTH, SAL, COMM, DEPTNO from emp where EMPNO = p_id) LOOP
    out_rec.ENAME := i.ENAME;
    out_rec.JOB := i.JOB;
   
    out_rec.MGR := i.MGR;
    out_rec.DATE_OF_BIRTH := i.DATE_OF_BIRTH;
    
    out_rec.SAL := i.SAL;
    out_rec.COMM := i.COMM;
    out_rec.DEPTNO := i.DEPTNO;
    
    pipe row(out_rec);
  END LOOP;

  RETURN;
END;