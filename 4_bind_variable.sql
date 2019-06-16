set autoprint on;
--variable emp_salary number;

    SELECT EMP.SAL --into :emp_salary
    FROM EMP
    WHERE EMP.EMPNO=7839;

/
print emp_salary;