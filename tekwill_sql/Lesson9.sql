

SELECT first_name || ' ' || last_name as Full_name,
JOB_ID,
salary,
case job_id when 'ST_CLERK' then salary *0.5
when'AC_ACCOUNT' THEN SALARY * 0.5
WHEN 'SA_MAN' THEN SALARY * 0.4
ELSE SALARY 
end as case1
FROM employees;




sELECT *
FROM EMPLOYEES;




SELECT  first_name || ' ' || last_name as Full_name,
JOB_ID,
SALARY,
DEPARTMENT_ID,
MANager_id,
CASE WHEN JOB_ID = 'IT_PROG' AND SALARY> 6000 THEN DEPARTMENT_ID
WHEN JOB_ID = 'SA_REP' AND SALARY< 9000 THEN DEPARTMENT_ID
ELSE MANAGER_ID
END AS CASE,
case  when job_id = 'ST_CLERK' then salary *0.5
when job_id ='AC_ACCOUNT' THEN SALARY * 0.5
WHEN job_id = 'SA_MAN' THEN SALARY * 0.4
ELSE MANAGER_ID
END AS CASE1
FROM EMPLOYEES;




SELECT  first_name || ' ' || last_name as Full_name,
JOB_ID,
SALARY,
decode(job_id,'IT_PROG', SALARY*0.10,
JOB_ID,'AC_ACCOUNT',SALARY*0.15, 
JOB_ID, 'SA_MAN', SALARY*0.2, SALARY) AS SALARY
FROM EMPLOYEES;




